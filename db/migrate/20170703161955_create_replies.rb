class CreateReplies < ActiveRecord::Migration[5.0]
  def change
    create_table :replies do |t|
      t.string :text
      # t.integer :post_id
      t.belongs_to :post
      t.belongs_to :user
      # t.integer :user_id

      t.timestamps
    end
  end
end
