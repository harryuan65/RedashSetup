require_relative "../base"

class CreatePost < ActiveRecord::Migration[7.0]
  def change
    create_table :posts , if_not_exists: true do |t|
      t.references :user
      t.string :content
      t.timestamps
    end
  end
end

CreatePost.new.change