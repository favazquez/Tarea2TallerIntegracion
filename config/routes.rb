Rails.application.routes.draw do
  get 'instagram/search'

  root 'welcome#index'
end
