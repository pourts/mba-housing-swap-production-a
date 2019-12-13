class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all.order({ :created_at => :desc })

    render({ :template => "bookmarks/index.html.erb" })
  end

  def show
    the_id = params.fetch("id_from_path")
    @bookmark = Bookmark.where({:id => the_id }).at(0)

    render({ :template => "bookmarks/show.html.erb" })
  end

  def create
    @bookmark = Bookmark.new
    @bookmark.creator_id = session[:user_id]
    @bookmark.listing_id = params.fetch("listing_id_from_query")

    if @bookmark.valid?
      @bookmark.save
      redirect_to("/bookmarks", { :notice => "Bookmark created successfully." })
    else
      redirect_to("/bookmarks", { :notice => "Bookmark failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("id_from_path")
    @bookmark = Bookmark.where({ :id => the_id }).at(0)

    @bookmark.creator_id = session[:user_id]
    @bookmark.listing_id = params.fetch("listing_id_from_query")

    if @bookmark.valid?
      @bookmark.save
      redirect_to("/bookmarks/#{@bookmark.id}", { :notice => "Bookmark updated successfully."} )
    else
      redirect_to("/bookmarks/#{@bookmark.id}", { :alert => "Bookmark failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("id_from_path")
    @bookmark = Bookmark.where({ :id => the_id }).at(0)
    if  @bookmark.creator_id == session[:user_id]
      @bookmark.destroy
      redirect_to("/bookmarks", { :notice => "Bookmark deleted successfully."} )
    else 
      redirect_to("/bookmarks", { :notice => "You don't own that bookmark."} )
    end
  end

  # def favorites
  #   @user_bookmarks = Bookmark.where({ :creator_id => @current_user })
  # end 

  # def bookmark_prop_owner_email
  #   the_prop = self.listing
  #   the_prop_owner_id = the_prop.owner_id
  #   the_prop_owner_email = User.where({ :id => the_prop_owner_id }).at(0).select(:email)
  # end 

end
