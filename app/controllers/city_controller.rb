class CityController < ApplicationController
  def show
    @city = City.find(params['id'])
    @user = User.where(city_id: params['id']).order(created_at: :desc)
    print @user
  end
end
