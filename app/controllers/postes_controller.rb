class PostesController < ApplicationController
	respond_to :json, :xml
	
	def index
		@postes = Poste.all
	end
end
