class CreateInterlocuteurs < ActiveRecord::Migration
  def change
    create_table :interlocuteurs do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
