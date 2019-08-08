class CommentsController < ApplicationController
    def show
    end
  
    def index
    end
  
    def new
      @comment = Comment.new
    end
  
    def create
      @comment = Comment.new(content: params[:content], user_id: 1, gossip_id: params[:id])
      if @comment.save
        flash[:success] = "commentaire envoyer"
        redirect_to gossip_path(params[:id])
      else
        flash[:alert] = "commentaire en traitement"
        redirect_to gossip_path(params[:id])
      end
    end
end
