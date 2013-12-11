# app/views/interlocuteurs/show.rabl
object @interlocuteur
 
# Declare the properties to include
attributes :nom, :prenom, :date_naissance, :negociation, :caractere, :discussion, :biographie, :interets
 
# Alias 'age' to 'years_old'
#attributes :age => :years_old
 
# Include a custom node with full_name for user
node :denomination do |interlocuteur|
  [interlocuteur.prenom, interlocuteur.nom].join(" ")
end
 
# Ajouter les infos sur le RA en charge
child :utilisateur do
  extends "utilisateurs/show"
end