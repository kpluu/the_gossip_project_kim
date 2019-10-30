class PagesController < ApplicationController
  def team
  end

  def contact
  end

  def index
    @allgossips = Gossip.all
  end

  def welcome
    puts "#" * 60
    puts "ceci est le params"
    @fn = params[:user_first_name]
  end

end
