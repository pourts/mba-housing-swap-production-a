class UsersController < ApplicationController
  skip_before_action(:force_user_sign_in, { :only => [:new_registration_form, :create] })
  
  def homepage
    render({ :template => "layouts/homepage.html.erb" })
  end 

  def new_registration_form
    render({ :template => "user_sessions/sign_up.html.erb" })
  end

  def create
    @user = User.new
    @user.email = params.fetch("email_from_query")
    @user.password = params.fetch("password_from_query")
    @user.password_confirmation = params.fetch("password_confirmation_from_query")
    @user.gender = params.fetch("gender_from_query")

    @user.fname = params.fetch("fname_from_query").capitalize
    @user.lname = params.fetch("lname_from_query").capitalize
    save_status = @user.save

    if save_status == true
      session.store(:user_id,  @user.id)
      # AccountMailer.new_account_notification(@record).deliver
      redirect_to("/listings", { :notice => "User account created successfully. Check email for confirmation"})
    else
      redirect_to("/user_sign_up", { :alert => "User account failed to create successfully."})
    end
  end

  # def edit_profile
  #   the_id = params.fetch("id_from_path")
  #   @view_user = User.where({:id => the_id }).at(0)
  #   render({ :template => "users/public_view_profile.html.erb" })
  # end 

  def edit_registration_form
    render({ :template => "users/edit_profile.html.erb" })
  end

  def update
    @user = @current_user
    @user.email = params.fetch("email_from_query", @current_user.email)
    @user.password = params.fetch("password_from_query", @current_user.password)
    @user.password_confirmation = params.fetch("password_confirmation_from_query", @current_user.password)
    @user.gender = params.fetch("gender_from_query", @current_user.gender)
    @user.fname = params.fetch("fname_from_query", @current_user.fname)
    @user.lname = params.fetch("lname_from_query", @current_user.lname)
    if @user.valid?
      @user.save

      redirect_to("/listings", { :notice => "User account updated successfully."})
    else
      render({ :template => "users/edit_profile_with_errors.html.erb" })
    end
  end

  def destroy
    @current_user.destroy
    reset_session
    
    redirect_to("/", { :notice => "User account cancelled" })
  end
  
end
