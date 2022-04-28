Rails.application.routes.draw do
 root 'personal_details#index'
 get 'create_user', :to =>'personal_details#create_user'
 get '/create', :to =>'personal_details#create'
 get 'show_user', :to => 'personal_details#show'
 get '/update_user/:id', :to => 'personal_details#update'
 get '/update_user/updating/:id', :to => 'personal_details#updating'
 get '/delete_user/:id', :to=> 'personal_details#delete_user'
 get 'view_user/:id', :to => 'personal_details#view_user'
 
end
