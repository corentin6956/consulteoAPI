# app/views/utilisateurs/show.rabl
object @utilisateur
 
# Declare the properties to include
attributes :nom, :prenom, :login, :password
 
# Alias 'age' to 'years_old'
#attributes :age => :years_old
 
# Include a custom node with full_name for user
node :denomination do |utilisateur|
  [utilisateur.prenom, utilisateur.nom].join(" ")
end
 
# Ajouter les infos sur le RA en charge
#child :utilisateur do
#  extends "utilisateurs/show"
#end