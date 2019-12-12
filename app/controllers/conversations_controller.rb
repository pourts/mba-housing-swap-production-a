class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.all.order({ :created_at => :desc })

    render({ :template => "conversations/index.html.erb" })
  end

  def show
    the_id = params.fetch("id_from_path")
    @conversation = Conversation.where({:id => the_id }).at(0)

    render({ :template => "conversations/show.html.erb" })
  end

  def create
    @conversation = Conversation.new
    @conversation.listing_id = params.fetch("listing_id_from_query")
    @conversation.requester_id = session[:user_id]
    # ...need owner id to auto populate below...
    @conversation.owner_id = params.fetch("owner_id_from_query")

    if @conversation.valid?
      @conversation.save
      redirect_to("/conversations", { :notice => "Conversation created successfully." })
    else
      redirect_to("/conversations", { :notice => "Conversation failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("id_from_path")
    @conversation = Conversation.where({ :id => the_id }).at(0)

    @conversation.listing_id = params.fetch("listing_id_from_query")
    @conversation.requester_id = params.fetch("requester_id_from_query")
    @conversation.owner_id = params.fetch("owner_id_from_query")

    if @conversation.valid?
      @conversation.save
      redirect_to("/conversations/#{@conversation.id}", { :notice => "Conversation updated successfully."} )
    else
      redirect_to("/conversations/#{@conversation.id}", { :alert => "Conversation failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("id_from_path")
    @conversation = Conversation.where({ :id => the_id }).at(0)

    @conversation.destroy

    redirect_to("/conversations", { :notice => "Conversation deleted successfully."} )
  end
end
