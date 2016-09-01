class HomeController < ApplicationController

	def index
		@message = Message.all.order(created_at: :desc)
		@new_message = Message.new
		# @message_time =  Time.now.strftime("%s") - @message.created_at.strftime("%s")
		@time = Time.now.strftime("%s")
	end

end
