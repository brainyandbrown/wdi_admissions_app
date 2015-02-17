class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :f_name, null: false
      t.string :l_name, null: false
      t.string :sex, null: false
      t.date   :born_on, null: false
      t.string :email, null: false, unique: true
      t.string :phone, null: false
      t.string :password_digest, null: false
      t.timestamps
    end
  end
end
