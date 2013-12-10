class CreatePostes < ActiveRecord::Migration
  def change
    create_table :postes do |t|
      t.string :name
      t.string :societe
      t.date :date_debut
      t.date :date_fin

      t.timestamps
    end
  end
end
