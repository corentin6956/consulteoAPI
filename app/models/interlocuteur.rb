class Interlocuteur < ActiveRecord::Base
	has_many :postes
	has_many :dons
	has_many :participants
	belongs_to :utilisateur
end
