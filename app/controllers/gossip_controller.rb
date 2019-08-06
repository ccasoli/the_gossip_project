class GossipController < ApplicationController
  def show
    @gossip = Gossip.find(params['id'])
  end

  def index
    @gossip = Gossip.all
  end

  def new
    @gossip = Gossip.new
  end

  def create
    user = User.create(first_name: params[:first_name], last_name: params[:last_name], city_id: 1)
    gossip = Gossip.create(title: params[:title], content: params[:content], user: user)
    if user.save && gossip.save
      redirect_to home_index_path
    else
      render'new'
    end
  end
end
