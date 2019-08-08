class GossipController < ApplicationController
  def show
    @gossip = Gossip.find(params[:id])
  end

  def index
    @gossip = Gossip.all
  end

  def new
    as_to_login
    @gossip = Gossip.new
  end

  def create
    gossip = Gossip.new(title: params[:title], content: params[:content], user_id: session[:user_id])
    if gossip.save
      flash[:success] = "le potin a ete creer"
      redirect_to home_index_path
    else
      flash[:alert] = "le potin n a pas ete rempli"
      render 'new'
    end
  end

  def edit
    as_to_login
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
    if @gossip.destroy
      flash[:success] = "potin supprimer"
      redirect_to gossip_index_path
    else
      flash[:alert] = "le potin n a pas ete supprimer"
      redirect_to @gossip
    end
  end
end
