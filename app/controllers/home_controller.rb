class HomeController < ApplicationController

	def index
		@message = Message.all.order(created_at: :desc)
		@new_message = Message.new
		@time = Time.now.strftime("%s")
	end

end
