Rails.application.routes.draw do
  get 'root/top'
#rootメソッド
root :to => 'root#top'
resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
