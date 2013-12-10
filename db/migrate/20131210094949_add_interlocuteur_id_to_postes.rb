class AddInterlocuteurIdToPostes < ActiveRecord::Migration
  def change
    add_column :postes, :interlocuteur_id, :integer
  end
end
