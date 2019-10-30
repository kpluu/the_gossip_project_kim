class GossipsController < ApplicationController
    def show
        @gossip = Gossip.find(params[:id])
        @day = @gossip.created_at.day
        @month = @gossip.created_at.month
        @year = @gossip.created_at.year
        @hour = @gossip.created_at.hour
        @min = @gossip.created_at.min
    end

    def index
    end

    def new
        @gossip = Gossip.new
    end

    def create
        puts "$" * 60
        puts "ceci est le contenu de params :"
        puts params
        puts "$" * 60
        #Gossip.create(params[:gossip_text])

        @gossip = Gossip.new({"title"=>@title, "content"=>@content, "user"=>@user}) # avec xxx qui sont les données obtenues à partir du formulaire

        if @gossip.save # essaie de sauvegarder en base @gossip
          # si ça marche, il redirige vers la page d'index du site
          redirect_to root_path
        else
          # sinon, il render la view new (qui est celle sur laquelle on est déjà)
          render :new
        end

    end

    def edit
    end

    def update
    end

    def destroy
    end



end
