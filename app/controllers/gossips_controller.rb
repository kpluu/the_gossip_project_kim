class GossipsController < ApplicationController
  
  def index
    @gossip = Gossip.all
  end  
  
  def show
        @gossip = Gossip.find(params[:id])
        @day = @gossip.created_at.day
        @month = @gossip.created_at.month
        @year = @gossip.created_at.year
        @hour = @gossip.created_at.hour
        @min = @gossip.created_at.min
    end

    def new
        @gossip = Gossip.new
    end

    def create
        puts "$" * 60
        puts "ceci est le contenu de params :"
        puts params
        @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 11) 
        
        #user_id: 11 correspond à l'ID anonymous après généré 10 Fakers Users via seed et créé manuellement l'user anonymous dans la console.

        if @gossip.save # essaie de sauvegarder en base @gossip
          # si ça marche, il redirige vers la page d'index du site
          @gossip = Gossip.all
          redirect_to root_path
        else
          # sinon, il render la view new (qui est celle sur laquelle on est déjà)
          render :new
        end

    end

    def edit
      @gossip = Gossip.find(params[:id])
    end

    def update
      @gossip = Gossip.find(params[:id])
      if @gossip.update(title: params[:title], content: params[:content])
        redirect_to root_path
      else
        render :edit
      end
    end

    def destroy
    end



end
