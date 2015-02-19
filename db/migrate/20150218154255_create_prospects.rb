class CreateProspects < ActiveRecord::Migration
  def change
    create_table   :prospects do |t|
      t.references :students, null: false
      t.references :admissions
      t.references :instructors
      t.integer    :status,   null: false
    end
  end
end
