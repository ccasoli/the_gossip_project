class GossipController < ApplicationController
  def show
    @gossip = Gossip.find(params['id'])
  end

  def index
    @gossips = Gossip.all
  end

  def new
    
  end

  def create
    u = User.create(first_name: params[:first_name], last_name: params[:last_name], city_id: 1)
    Gossip.create!(title: params[:title], content: params[:content], user_id: u.id)
    puts "gossip bien creer"
  end
end
