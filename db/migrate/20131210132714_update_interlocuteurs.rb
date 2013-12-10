class UpdateInterlocuteurs < ActiveRecord::Migration
  def change
	remove_column :interlocuteurs, :name, :string
	remove_column :interlocuteurs, :age, :integer
	
	add_column :interlocuteurs, :nom, :string
	add_column :interlocuteurs, :prenom, :string
	add_column :interlocuteurs, :date_naissance, :date
	add_column :interlocuteurs, :negociation, :text
	add_column :interlocuteurs, :caractere, :text
	add_column :interlocuteurs, :discussion, :text
	add_column :interlocuteurs, :biographie, :text
	add_column :interlocuteurs, :interets, :text
	add_column :interlocuteurs, :utilisateur_id, :integer
  end
end
