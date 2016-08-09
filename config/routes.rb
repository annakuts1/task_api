Rails.application.routes.draw do
  #namespace :api,defaults: { format: :json }, path: '/', constraints: { subdomain: 'api' } do
 resources:tasks
 root 'tasks#index'
#end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
