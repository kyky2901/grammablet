class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.integer :gram_id
      t.integer :user_id
      t.timestamps
    end

    add_index :pictures, [:gram_id, :user_id]
    add_index :pictures, :gram_id
  end
end
