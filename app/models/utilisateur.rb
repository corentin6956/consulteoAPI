class Utilisateur < ActiveRecord::Base
	has_many :participants
	has_many :interlocuteurs
end
