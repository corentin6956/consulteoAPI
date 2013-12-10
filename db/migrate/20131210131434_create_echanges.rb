class CreateEchanges < ActiveRecord::Migration
  def change
    create_table :echanges do |t|
      t.string :nature
      t.text :cr
      t.date :date_ech

      t.timestamps
    end
  end
end
