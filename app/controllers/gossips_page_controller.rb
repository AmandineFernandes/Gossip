class GossipsPageController < ApplicationController

    # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    def create
        @gossip = Gossip.new('user_id' => User.all.sample.id,
                        'title' => params[:title],
                        'content' => params[:content])

        if @gossip.save #si ça marche, il redirige vers la page index du site
           flash[:success] = "Potin bien créé !"
           redirect_to root_path(success: true)
        else
           render :new
        end
      end

    def index
        @gossips = Gossip.all
    end
  end
