Rails.application.routes.draw do
  devise_for :users
  root "calendars#index"

  resources :calendars, :categories do
    resources :notes, :participants, :tasks
  end
end
