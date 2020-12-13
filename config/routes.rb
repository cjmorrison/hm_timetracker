Rails.application.routes.draw do

  get ':controller(/:action(/:id))(.:format)'
  post ':controller(/:action(/:id))(.:format)'
  get 'login' => 'clock_users#login' 
  get 'employee/punchEvent' => 'clock_events#punchEvent'
  root 'clock_users#login'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
