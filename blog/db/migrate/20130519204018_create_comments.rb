class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :tea

      t.timestamps
    end
    add_index :comments, :tea_id
  end
end
