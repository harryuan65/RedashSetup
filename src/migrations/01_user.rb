require_relative "../base"

class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users , if_not_exists: true do |t|
      t.string :name
      t.integer :posts_count, default: 0, null: false
      t.timestamps
    end
  end
end

CreateUser.new.change