class HomeController < ApplicationController

	def index
		
	end	

	def healthcheck
		render :json => {:status => "OK", :message => "All Fine here"}, :status => 200
	end	

	def greeting
		@name = params[:name]		
	end	

end	