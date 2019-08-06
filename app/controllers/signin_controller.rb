class SigninController < ApplicationController
    def index
    end

    def create
        User.create!(first_name: params[:first_name],last_name: params[:last_name], description: params[:description], age: params[:age], city_id: params[:city])
        puts "user bien creer"
    end
end
