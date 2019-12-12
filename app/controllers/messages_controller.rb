class MessagesController < ApplicationController
  def index
    @messages = Message.all.order({ :created_at => :desc })

    render({ :template => "messages/index.html.erb" })
  end

  def show
    the_id = params.fetch("id_from_path")
    @message = Message.where({:id => the_id }).at(0)

    render({ :template => "messages/show.html.erb" })
  end

  def create
    @message = Message.new
    @message.conversation_id = params.fetch("conversation_id_from_query")
    @message.author_id = params.fetch("author_id_from_query")

    if @message.valid?
      @message.save
      redirect_to("/messages", { :notice => "Message created successfully." })
    else
      redirect_to("/messages", { :notice => "Message failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("id_from_path")
    @message = Message.where({ :id => the_id }).at(0)

    @message.conversation_id = params.fetch("conversation_id_from_query")
    @message.author_id = params.fetch("author_id_from_query")

    if @message.valid?
      @message.save
      redirect_to("/messages/#{@message.id}", { :notice => "Message updated successfully."} )
    else
      redirect_to("/messages/#{@message.id}", { :alert => "Message failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("id_from_path")
    @message = Message.where({ :id => the_id }).at(0)

    @message.destroy

    redirect_to("/messages", { :notice => "Message deleted successfully."} )
  end
end
