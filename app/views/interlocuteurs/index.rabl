# app/views/interlocuteurs/show.rabl
object @interlocuteurs
 
# Reuse the show template definition
extends "interlocuteurs/show"
 
# Let's add an "id" resource for the index action
attributes :id