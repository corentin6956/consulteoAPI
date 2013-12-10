class InterlocuteursController < ApplicationController

	respond_to :json, :xml
	def show
		@interlocuteur = Interlocuteur.find_by_id(params[:id])
	end
	
	def index
		@interlocuteur = Interlocuteur.all
	end
	
end
