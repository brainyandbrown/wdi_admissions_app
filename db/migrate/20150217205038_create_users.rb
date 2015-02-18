class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :type
      t.string :f_name
      t.string :l_name
      t.string :sex
      t.date   :born_on
      t.string :email,           null: false, unique: true
      t.string :phone
      t.string :password_digest, null: false
      t.timestamps
    end
  end
end
