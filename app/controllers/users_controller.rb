class UsersController < ApplicationController
    def index
        @user = User.all
        # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user=User.new
    end

    def create
        @user=User.new(last_name:params[:last_name], first_name:params[:first_name], email: params[:email], description:params[:description])
        if @user.save
        render 'show'
        else
        render 'new'
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end

end
