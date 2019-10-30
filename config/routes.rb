# frozen_string_literal: true

Rails.application.routes.draw do
  get 'welcome/index'
  get 'rank/index'
  # get 'quotes/index'
  # get 'champions/index'
  get '/champion', to: 'champion#index'
  get '/champion/:id', to: 'champion#show', id: /\d+/

  root to: 'welcome#index'
  # get 'champions/show'
  # get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
