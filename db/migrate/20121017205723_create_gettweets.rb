class CreateGettweets < ActiveRecord::Migration
  def change
    create_table :gettweets do |t|
      t.string :tweet
      t.string :category
      t.integer :date
      t.integer :user_id
      t.integer :store_id
      t.string :tags

      t.timestamps
    end
  end
end
