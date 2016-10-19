Rails.application.routes.draw do
  get 'administration/user_list'

  post 'add_to_cart' => 'cart#add_to_cart'

  post 'edit_line_item' => 'cart#edit_line_item'

  get 'delete_line_item' => 'cart#delete_line_item'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  post 'order_complete' => 'cart#order_complete'

  devise_for :users
  
  root 'storefront#all_items'

  get 'categorical' => 'storefront#items_by_category'

  get 'branding' => 'storefront#items_by_brand'

  resources :products

  get 'users' => 'administration#user_list'

  get 'add_admin' => 'administration#add_admin'

  get 'remove_admin' => 'administration#remove_admin'

  get 'invoices' => 'administration#invoices'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
