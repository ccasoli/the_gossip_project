class HomeController < ApplicationController
  def show

  end
  def index
    @gossip = Gossip.last(3)
    @user = User.last(3)
  end
end
