Rails.application.routes.draw do
  resources :products
  root 'products#index'
  resources :pens, controller: :products, type: Pen.model_name.to_s
  resources :notebooks, controller: :products, type: Notebook.model_name.to_s
end
