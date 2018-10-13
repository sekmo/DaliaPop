Rails.application.routes.draw do
  root 'pages#show', page: 'welcome'
  get  'pages/:page', to: 'pages#show', as: 'pages'
  devise_for :users
end
