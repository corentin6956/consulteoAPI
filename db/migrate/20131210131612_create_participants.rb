class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.integer :interlocuteur_id
      t.integer :utilisateur_id
      t.integer :echange_id

      t.timestamps
    end
  end
end
