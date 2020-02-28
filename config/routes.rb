Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  namespace :api do
    resource :devices
    resource :recipes
    resource :chambers
    resource :events
  end

end
