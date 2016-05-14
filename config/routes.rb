Rails.application.routes.draw do
    post 'instagram/tag/buscar' => 'instagram#search'
  root 'welcome#index'
end
