Rails.application.routes.draw do
  get 'instagram/search'  => 'welcome#index'
  post 'instagram/tag/buscar' => 'instagram#search'
  root 'welcome#index'
end
