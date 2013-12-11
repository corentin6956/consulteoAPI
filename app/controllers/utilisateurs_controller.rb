class UtilisateursController < ApplicationController
	respond_to :json, :xml

	def new
		@utilisateur = Utilisateur.new
	end

	def create
		@utilisateur = Utilisateur.new(params[:utilisateur].permit(:nom, :prenom, :login, :password))
 
		if @utilisateur.save
			redirect_to @utilisateur
		else
			render 'new'
		end
	end

	def update
		@utilisateur = Utilisateur.find(params[:id])
	 
		if @utilisateur.update(params[:utilisateur].permit(:nom, :prenom, :login, :password))
			redirect_to @utilisateur
		else
			render 'edit'
		end
	end

	def edit
		@utilisateur = Utilisateur.find(params[:id])
	end

	def destroy
		@utilisateur = Utilisateur.find(params[:id])
		@utilisateur.destroy
	 
		redirect_to utilisateurs_path
	end

	def index
		@utilisateurs = Utilisateur.all
	end

	def show
		@utilisateur = Utilisateur.find(params[:id])
	end
end
