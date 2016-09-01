class MessagesController < ApplicationController

	def new
		@message = Message.new
	end

	def create	
		@message = Message.new(message_params)

		if @message.save

			flash[:notice] = "Success!"
			redirect_to root_path
		else
			flash[:notice] = "Something went wrong..."
			render :new
		end
	end

	private

	def message_params
		params.require(:message).permit(:user, :body)
	end

end
