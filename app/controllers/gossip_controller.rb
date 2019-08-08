class GossipController < ApplicationController
  def show
    @gossip = Gossip.find(params['id'])
  end

  def index
    @gossip = Gossip.all
  end

  def new
    @gossip = Gossip.new
    @user = User.new
  end

  def create
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], city_id: 1)
    @gossip = Gossip.new(title: params[:title], content: params[:content], user: @user)
    if @user.save && @gossip.save
      flash[:success] = "le potin a ete creer"
      redirect_to home_index_path
    else
      flash[:alert] = "les champs sont mal rempli"
      render'new'
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.title == params[:gossip][:title] && @gossip.content == params[:gossip][:content]
      flash[:alert] = "pas de modification apporter"
      redirect_to @gossip
    elsif @gossip.update(title: params[:gossip][:title], content: params[:gossip][:content])
      flash[:success] = "potin mis a jour"
      redirect_to @gossip
    else
      flash[:alert] = "le potin n a pas ete mis a jour"
      render :edit
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossip_index_path
  end
end
