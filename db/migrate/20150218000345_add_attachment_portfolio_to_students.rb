class AddAttachmentPortfolioToStudents < ActiveRecord::Migration
  def self.up
    change_table :students do |t|
      t.attachment :portfolio
    end
  end

  def self.down
    remove_attachment :students, :portfolio
  end
end
