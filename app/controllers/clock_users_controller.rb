class ClockUsersController < ApplicationController

    def login

    end

    def login_attempt
        # I'm not very familliar with user authenifaction in Rails yet
        # much of the will be from the rails_simple_user_auth example by user ruprict on Github
        # https://github.com/RubySource/rails_simple_user_auth 
        
		authorized_user = ClockUser.authenticate(params[:login_userId],params[:login_password])
		
		if authorized_user
			session[:login_userId] = authorized_user.id
			flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.login_userId}"
			redirect_to(:action => 'employee\punchEvent')
		else
			flash[:notice] = "Invalid Username or Password"
        	flash[:color]= "invalid"
			render "login"	
		end
	end


end
