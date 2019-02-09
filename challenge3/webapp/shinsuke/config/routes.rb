Rails.application.routes.draw do
  get 'energies/new'
  get 'houses/new'
    resources :houses
    resources :energies
end
