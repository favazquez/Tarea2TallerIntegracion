Rails.application.routes.draw do
  post 'instagram/search'

  root 'welcome#index'
end
