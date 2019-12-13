Rails.application.routes.draw do

  match("/", { :controller => "users", :action => "homepage", :via => "get"})

  # Routes for the Message resource:

  # CREATE
  match("/insert_message", { :controller => "messages", :action => "create", :via => "post"})
          
  # READ
  match("/messages", { :controller => "messages", :action => "index", :via => "get"})
  
  match("/messages/:id_from_path", { :controller => "messages", :action => "show", :via => "get"})
  
  # UPDATE
  
  match("/modify_message/:id_from_path", { :controller => "messages", :action => "update", :via => "post"})
  
  # DELETE
  match("/delete_message/:id_from_path", { :controller => "messages", :action => "destroy", :via => "get"})

  #------------------------------

  # Routes for the Conversation resource:

  # CREATE
  match("/insert_conversation", { :controller => "conversations", :action => "create", :via => "post"})
          
  # READ
  match("/conversations", { :controller => "conversations", :action => "index", :via => "get"})
  
  match("/conversations/:id_from_path", { :controller => "conversations", :action => "show", :via => "get"})
  
  # UPDATE
  
  match("/modify_conversation/:id_from_path", { :controller => "conversations", :action => "update", :via => "post"})
  
  # DELETE
  match("/delete_conversation/:id_from_path", { :controller => "conversations", :action => "destroy", :via => "get"})

  #------------------------------

  # Routes for the Bookmark resource:

  # CREATE
  match("/insert_bookmark", { :controller => "bookmarks", :action => "create", :via => "post"})
          
  # READ
  match("/bookmarks", { :controller => "bookmarks", :action => "index", :via => "get"})
  
  match("/bookmarks/:id_from_path", { :controller => "bookmarks", :action => "show", :via => "get"})
  
  # UPDATE
  
  match("/modify_bookmark/:id_from_path", { :controller => "bookmarks", :action => "update", :via => "post"})
  
  # DELETE
  match("/delete_bookmark/:id_from_path", { :controller => "bookmarks", :action => "destroy", :via => "get"})

  #------------------------------

  # Routes for the Request resource:

  # CREATE
  match("/new_request", { :controller => "requests", :action => "new_request_form", :via => "get"})
  match("/insert_request", { :controller => "requests", :action => "create", :via => "post"})
          
  # READ
  match("/requests", { :controller => "requests", :action => "index", :via => "get"})
  
  match("/requests/:id_from_path", { :controller => "requests", :action => "show", :via => "get"})
  
  # UPDATE
  
  match("/modify_request/:id_from_path", { :controller => "requests", :action => "update", :via => "post"})
  
  # DELETE
  match("/delete_request/:id_from_path", { :controller => "requests", :action => "destroy", :via => "get"})

  #------------------------------

  # Routes for the Listing resource:

  # CREATE
  match("/new_listing", { :controller => "listings", :action => "new_listing_form", :via => "get"})
  match("/insert_listing", { :controller => "listings", :action => "create", :via => "post"})
          
  # READ
  match("/listings", { :controller => "listings", :action => "index", :via => "get"})
  
  match("/listings/:id_from_path", { :controller => "listings", :action => "show", :via => "get"})
  
  # UPDATE
  ##### need to use curly brackets here for the edit listing path? #####
  match("/edit_listing/:id_from_path", { :controller => "listings", :action => "edit_listing_form", :via => "get"})
  match("/modify_listing/:id_from_path", { :controller => "listings", :action => "update", :via => "post"})
  
  # DELETE
  match("/delete_listing/:id_from_path", { :controller => "listings", :action => "destroy", :via => "get"})

  #------------------------------

  # Routes for signing up

  match("/user_sign_up", { :controller => "users", :action => "new_registration_form", :via => "get"})
  
  # Routes for signing in
  match("/user_sign_in", { :controller => "user_sessions", :action => "new_session_form", :via => "get"})
  
  match("/user_verify_credentials", { :controller => "user_sessions", :action => "add_cookie", :via => "post"})
  
  # Route for signing out
  
  match("/user_sign_out", { :controller => "user_sessions", :action => "remove_cookies", :via => "get"})
  
  # Route for creating account into database 

  match("/post_user", { :controller => "users", :action => "create", :via => "post" })
  
  # Route for reading account

  match("/my_profile/:id_from_path", { :controller => "users", :action => "my_profile", :via => "get"})

  # Route for editing account
  
  match("/edit_user", { :controller => "users", :action => "edit_registration_form", :via => "get"})
  
  match("/patch_user", { :controller => "users", :action => "update", :via => "post"})
  
  # Route for deleting an account
  
  match("/cancel_user_account", { :controller => "users", :action => "destroy", :via => "get"})


  #------------------------------

  # ======= Add Your Routes Above These =============
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
