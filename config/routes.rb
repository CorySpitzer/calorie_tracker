Rails.application.routes.draw do
  root :to => "calorie_modifiers#index"
  resources :calorie_modifiers
end
