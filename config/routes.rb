# frozen_string_literal: true

Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  devise_for :users
  root "home#index"
  get "about", to: "about#index"
  get "articles", to: "articles#index"
  get "articles/:slug", to: "articles#show", as: :article
  get "projects", to: "projects#index"

  get "vault", to: "vault#index", as: :vault
  get "vault/embed", to: "vault#embed", as: :vault_embed
  get "vault/*path", to: "vault#show", as: :vault_page
end