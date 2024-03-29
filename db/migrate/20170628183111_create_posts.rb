class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :text
      # t.integer :user_id
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
