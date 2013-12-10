# app/views/posts/index.rabl  
 
# Declare the data source  
collection @postes 
 
# Declare attributes to display  
attributes :name, :societe 
 
# Add custom node to declare if the post is recent 
#node :is_recent do |post|      
#  post.created_at > 1.week.ago
#end
 
# Include user as child node, reusing the User 'show' template
child :interlocuteur do
  extends "interlocuteurs/show"
end