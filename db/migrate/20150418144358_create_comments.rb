class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id, null: false
      t.text    :body,    null: false
      t.string  :picture
      t.integer :idea_id, null: false

      t.timestamps
    end

    add_index :comments, :idea_id
  end
end
