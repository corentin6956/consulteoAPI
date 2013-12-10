class UpdateSocieteFromPostes < ActiveRecord::Migration
  def change
	add_column :postes, :societe_id, :integer
	remove_column :postes, :societe, :string
  end
end
