class UsersController < ApplicationController

	def new 
		@user = User.new
	end 

	def create
		@user = User.new
		@user.username = params[:username]
		@user.bio = params[:bio]

        if @user.save
            redirect_to "/users/#{@user.id}"
        else
            redirect_to "/users/error"
        end
	end 

	def show
		@user = User.find(params[:user_id])

		@username = @user.username
		@userbio  = @user.bio
	end 
end