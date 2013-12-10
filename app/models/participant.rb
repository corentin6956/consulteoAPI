class Participant < ActiveRecord::Base
	belongs_to :interlocuteur
	belongs_to :echange
	belongs_to :utilisateur
end
