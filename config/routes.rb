Rails.application.routes.draw do
  get '/top' => 'homes#top'
  get 'lists/new'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  #.../lists/1や.../lists/3に該当する
  get 'lists/:id' => 'lists#show', as: 'list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  patch 'lists/:id' => 'lists#update', as: 'update_list'
end
