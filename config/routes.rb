Rails.application.routes.draw do
  get "students/index" =>"students#index" #一覧表示
  get "students/search" =>"students#search"
  get "students/new" =>"students#new" 
  post "students/create" =>"students#create"

end
