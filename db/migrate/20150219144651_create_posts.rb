# class CreatePosts < ActiveRecord::Migration
#   def change
#     create_table :posts do |t|
#       t.string :title
#       t.string :body
#       t.attachment :image

#       t.timestamps null: false
#     end
#   end
# end


class AddAvatarColumnsToUsers < ActiveRecord::Migration
  def self.up
    add_attachment :cheeses, :avatar
  end

  def self.down
    remove_attachment :cheeses, :avatar
  end
end
