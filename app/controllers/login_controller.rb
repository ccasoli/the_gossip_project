class LoginController < ApplicationController
    def show
        @user = User.all
    end

    def new
        @cities = City.all
    end

    def create
        if user = User.authenticate(params[:username], params[:password])
          # Save the user ID in the session so it can be used in
          # subsequent requests
          session[:current_user_id] = user.id
          redirect_to root_url
        end
    end
end
