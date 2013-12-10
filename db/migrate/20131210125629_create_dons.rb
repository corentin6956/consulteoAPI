class CreateDons < ActiveRecord::Migration
  def change
    create_table :dons do |t|
      t.string :nom
      t.float :montant
      t.date :date_offert
	  t.integer :interlocuteur_id
      t.timestamps
    end
  end
end
