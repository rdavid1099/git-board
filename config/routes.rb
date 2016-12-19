Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/push', to: 'gitactions#create'
    end
  end
end
