class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  before_action :set_locale
  before_action :configure_permitted_parameters, if: :devise_controller?

  SPANISH_MONTHS = %w[enero febrero marzo abril mayo junio julio agosto septiembre octubre noviembre diciembre].freeze

  helper_method :spanish?, :localized_path, :site_date

  def default_url_options
    spanish? ? { locale: "es" } : {}
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :name ])
    devise_parameter_sanitizer.permit(:account_update, keys: [ :name ])
  end

  private

  def set_locale
    @locale = params[:locale] == "es" ? "es" : "en"
  end

  def spanish?
    @locale == "es"
  end

  def localized_path(locale)
    path = request.path
    normalized_path = path.sub(%r{\A/es(?=/|\z)}, "")
    normalized_path = "/" if normalized_path.blank?

    locale.to_s == "es" ? "/es#{normalized_path == "/" ? "" : normalized_path}" : normalized_path
  end

  def site_date(date)
    parsed_date = Date.parse(date.to_s)
    return parsed_date.strftime("%B %-d, %Y") unless spanish?

    "#{parsed_date.day} de #{SPANISH_MONTHS[parsed_date.month - 1]} de #{parsed_date.year}"
  end
end
