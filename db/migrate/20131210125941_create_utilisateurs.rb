class CreateUtilisateurs < ActiveRecord::Migration
  def change
    create_table :utilisateurs do |t|
      t.string :nom
      t.string :prenom
      t.string :login
      t.string :password

      t.timestamps
    end
  end
end
