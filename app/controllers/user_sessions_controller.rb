class UserSessionsController < ApplicationController
  skip_before_action(:force_user_sign_in, { :only => [:new_session_form, :add_cookie] })

  def new_session_form
    render({ :template => "user_sessions/sign_in.html.erb" })
  end

  def add_cookie
    user = User.where({ :email => params.fetch("email_from_query") }).at(0)
    
    the_supplied_password = params.fetch("password_from_query")
    
    if user != nil
      are_they_legit = user.authenticate(the_supplied_password)
    
      if are_they_legit == false
        redirect_to("/user_sign_in", { :alert => "Password incorrect." })
      else
        session.store(:user_id, user.id)
      
        redirect_to("/listings", { :notice => "Signed in successfully." })
      end
    else
      redirect_to("/user_sign_in", { :alert => "There's no user account with that email address." })
    end
  end

  def remove_cookies
    reset_session

    redirect_to("/", { :notice => "Signed out successfully." })
  end
 
end
