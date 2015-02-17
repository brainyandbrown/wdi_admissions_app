class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :f_name, null: false
      t.string :l_name, null: false
      t.string :sex, null: false
      t.date   :born_on, null: false
      t.string :email, null: false, unique: true
      t.string :phone, null: false
      t.string :password_digest, null: false
      t.string :user_type, null: false
      t.timestamps
    end
  end
end
