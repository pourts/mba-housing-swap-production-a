class ListingsController < ApplicationController
  def index
    @listings = Listing.all.order({ :created_at => :desc })

    render({ :template => "listings/index.html.erb" })
  end

  def show
    the_id = params.fetch("id_from_path")
    @listing = Listing.where({:id => the_id }).at(0)
    render({ :template => "listings/show.html.erb" })
  end

  def new_listing_form
    render({ :template => "listings/new_listing.html.erb" })
  end 

  def create
    @listing = Listing.new
    @listing.metro_area = params.fetch("metro_area_from_query", nil)
    @listing.start_date = params.fetch("start_date_from_query")
    @listing.end_date = params.fetch("end_date_from_query")
    @listing.owner_id = session[:user_id] 
    @listing.available = true 
    @listing.address = params.fetch("address_from_query")
    @listing.beds = params.fetch("beds_from_query", nil)
    @listing.baths = params.fetch("baths_from_query", nil)
    @listing.private_bath = params.fetch("private_bath_from_query", false)
    @listing.floor = params.fetch("floor_from_query")
    @listing.elevator = params.fetch("elevator_from_query", false)
    @listing.laundry = params.fetch("laundry_from_query", nil)
    @listing.rent = params.fetch("rent_from_query", nil)
    @listing.gender_preference = params.fetch("gender_preference_from_query")
    @listing.pets = params.fetch("pets_from_query", false)
    @listing.details = params.fetch("details_from_query")
    @listing.roomate = params.fetch("roomate_from_query", false)

    if @listing.valid?
      @listing.save
      redirect_to("/listings", { :notice => "Listing created successfully." })
    else
      redirect_to("/listings", { :notice => "Listing failed to create successfully." })
    end
  end

  def edit_listing_form
    render({ :template => "listings/edit_listing.html.erb"})
  end 

  def update
    the_id = params.fetch("id_from_path")
    @listing = Listing.where({ :id => the_id }).at(0)

    @listing.metro_area = params.fetch("metro_area_from_query", @listing.metro_area)
    @listing.start_date = params.fetch("start_date_from_query", @listing.start_date)
    @listing.end_date = params.fetch("end_date_from_query", @listing.end_date)
    # @listing.owner_id = params.fetch("owner_id_from_query")
    @listing.available = params.fetch("available_from_query", true)
    @listing.address = params.fetch("address_from_query", @listing.address)
    @listing.beds = params.fetch("beds_from_query", @listing.beds)
    @listing.baths = params.fetch("baths_from_query", @listing.baths)
    @listing.private_bath = params.fetch("private_bath_from_query", false)
    @listing.floor = params.fetch("floor_from_query", @listing.floor)
    @listing.elevator = params.fetch("elevator_from_query", false)
    @listing.laundry = params.fetch("laundry_from_query", false)
    @listing.rent = params.fetch("rent_from_query", @listing.rent)
    @listing.gender_preference = params.fetch("gender_preference_from_query", @listing.gender_preference)
    @listing.pets = params.fetch("pets_from_query", false)
    @listing.details = params.fetch("details_from_query", @listing.details)
    @listing.roomate = params.fetch("roomate_from_query", false)

    if @listing.valid?
      @listing.save
      redirect_to("/listings/#{@listing.id}", { :notice => "Listing updated successfully."} )
    else
      redirect_to("/listings/#{@listing.id}", { :alert => "Listing failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("id_from_path")
    @listing = Listing.where({ :id => the_id }).at(0)
    if @listing.owner_id == session[:user_id]
      @listing.destroy

      redirect_to("/listings", { :notice => "Listing deleted successfully."} )
    else
      redirect_to("/listings", { :notice => "You don't own that listing."} )
    end 
  end
  
end
