class CommentsController < ApplicationController
    def show
    end
  
    def index
    end
  
    def new
      @comment = Comment.new
    end
  
    def create
      comment = Comment.new(content: params[:content], user_id: session[:user_id], gossip_id: params[:id])
      if comment.save
        flash[:success] = "commentaire envoyer"
        redirect_to gossip_path(params[:gossip_id])
      else
        flash[:alert] = "champ vide"
        redirect_to gossip_path(params[:gossip_id])
      end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      flash[:success] = "commentaire supprimer"
      redirect_to gossip_path(params[:gossip_id])
    else
      flash[:alert] = "commentaire n a pas ete supprimer"
      redirect_to gossip_path(params[:gossip_id])
    end
  end
end
