class Removeindex < ActiveRecord::Migration
  def change
    remove_index :reviews, column: :moviename
  end
end
