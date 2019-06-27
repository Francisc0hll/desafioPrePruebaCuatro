Rails.application.routes.draw do
  resources :proyects do
    post '/employees', to:'proyects#add_employee', as:'add_employee'
    delete '/employees/:id', to:'proyects#remove_employee', as:'remove_employee'
  end
  
  resources :employees
  root 'proyects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
