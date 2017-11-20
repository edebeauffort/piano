class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your message!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end

#class ContactsController < ApplicationController
#  def new
#    @contact = Contact.new
#  end

#  def create
#   @contact = Contact.new(params[:contact])
#   @contact.request = request
#    respond_to do |format|
#      if @contact.deliver
#        # re-initialize Home object for cleared form
#        @contact = Contact.new
#        format.html { render 'index'}
#        format.js   { flash.now[:success] = @message = "Thank you for your message. I'll get back to you soon!" }
#      else
#        format.html { render 'index' }
#        format.js   { flash.now[:error] = @message = "Message did not send." }
#      end
#    end
#  end
#end
