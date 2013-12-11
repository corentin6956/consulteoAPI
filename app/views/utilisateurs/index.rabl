# app/views/utilisateurs/show.rabl
object @utilisateurs
 
# Reuse the show template definition
extends "utilisateurs/show"
 
# Let's add an "id" resource for the index action
attributes :id