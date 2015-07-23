class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :moviename, null: false
      t.string :email, null: false
      t.integer :rating, null: false
      t.text :comment

      t.timestamps null: false
    end
    add_index :reviews, :moviename, unique: true
  end
end
