# frozen_string_literal: true

class VaultController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  QUARTZ_URL = ENV.fetch("QUARTZ_URL", "http://localhost:8080")

  def index
  end

  def show
    @path = params[:path]
    render :index
  end

  def embed
    @quartz_url = QUARTZ_URL
    render layout: false
  end
end