class CreateTeas < ActiveRecord::Migration
  def change
    create_table :teas do |t|
      t.string :name
      t.string :producer
      t.integer :type_of_fluid
      t.string :webpage
      t.string :image
      t.text :extra_content

      t.timestamps
    end
  end
end
