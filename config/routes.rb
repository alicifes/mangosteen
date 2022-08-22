Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      # /api/vi
      resoureces :validation_codes, only: [:create]
      resourece  :session, only: [:create, :destory]
      resourece  :me, only: [:show]
      resoureces :items
      resoureces :tags
    end
  end
end
