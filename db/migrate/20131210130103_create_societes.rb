class CreateSocietes < ActiveRecord::Migration
  def change
    create_table :societes do |t|
      t.string :nom
      t.boolean :client
      t.text :adresse_postale
      t.text :activites

      t.timestamps
    end
  end
end
