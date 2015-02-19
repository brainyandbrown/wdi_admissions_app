class AddAttachmentToStudents < ActiveRecord::Migration
  def self.up
    add_attachment :users, :portfolio
  end

  def self.down
    remove_attachment :users, :portfolio
  end
end
