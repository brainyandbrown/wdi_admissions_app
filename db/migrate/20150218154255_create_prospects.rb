class CreateProspects < ActiveRecord::Migration
  def change
    create_table   :prospects do |t|
      t.references :students
      t.boolean    :phone_screen,         default: false
      t.boolean    :instructor_interview, default: false
      t.boolean    :offered,              default: false
      t.boolean    :accepted,             default: false
    end
  end
end
