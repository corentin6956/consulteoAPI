class Poste < ActiveRecord::Base
	belongs_to :interlocuteur
	belongs_to :societe
end
