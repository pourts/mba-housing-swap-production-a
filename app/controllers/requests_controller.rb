class RequestsController < ApplicationController
  def index
    @requests = Request.all.order({ :created_at => :desc })

    render({ :template => "requests/index.html.erb" })
  end

  def show
    the_id = params.fetch("id_from_path")
    @request = Request.where({:id => the_id }).at(0)

    render({ :template => "requests/show.html.erb" })
  end

  def new_request_form 
    render({ :template => "requests/new_request.html.erb" })
  end 

  def create
    @request = Request.new
    @request.requester_id = params.fetch("requester_id_from_query")
    @request.metro_area = params.fetch("metro_area_from_query")
    @request.start_date = params.fetch("start_date_from_query")
    @request.end_date = params.fetch("end_date_from_query")

    if @request.valid?
      @request.save
      redirect_to("/requests", { :notice => "Request created successfully." })
    else
      redirect_to("/requests", { :notice => "Request failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("id_from_path")
    @request = Request.where({ :id => the_id }).at(0)

    @request.requester_id = params.fetch("requester_id_from_query")
    @request.metro_area = params.fetch("metro_area_from_query")
    @request.start_date = params.fetch("start_date_from_query")
    @request.end_date = params.fetch("end_date_from_query")

    if @request.valid?
      @request.save
      redirect_to("/requests/#{@request.id}", { :notice => "Request updated successfully."} )
    else
      redirect_to("/requests/#{@request.id}", { :alert => "Request failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("id_from_path")
    @request = Request.where({ :id => the_id }).at(0)
    if @request.requester_id == session[:user_id]
      @request.destroy

      redirect_to("/requests", { :notice => "Request deleted successfully."} )
    else 
      redirect_to("/listings", { :notice => "You don't own that request."} )
    end 
  end
end
