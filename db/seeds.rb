#("f_name", "l_name", "sex", "email", "phone", "password_digest", "created_at", "updated_at")
User.create([
<<<<<<< HEAD
  { f_name: "Angelina", l_name: "Bethoney", sex: "female", born_on: "April 13 1989", email: "ambethoney@yahoo.com", phone: "774-291-0958", password: "password" },
  { f_name: "Dana",     l_name: "DeFilipo", sex: "female", born_on: "April 14 1991", email: "dana.dflip@gmail.com", phone: "516-987-8427", password: "password" },
  { f_name: "Sade",     l_name: "Stevens",  sex: "female", born_on: "November 10 1991", email: "sadeshakur@gmail.com", phone: "516-043-7720", password: "password" },
  { f_name: "Dennis",   l_name: "Liaw",     sex: "male",   born_on: "May 16 1987", email: "dennisliaw@gmail.com", phone: "678-455-9920", password: "password" }
=======
  { f_name: "Angelina", l_name: "Bethoney", sex: "female", born_on: "April 13 1989", email: "ambethoney@yahoo.com", phone: "774-291-0958", password: "password", user_type: "student" },
  { f_name: "Dana",     l_name: "DeFilipo", sex: "female", born_on: "April 14 1991", email: "dana.dflip@gmail.com", phone: "516-987-8427", password: "password", user_type: "admissions" },
  { f_name: "Sade",     l_name: "Stevens",  sex: "female", born_on: "November 10 1991", email: "sadeshakur@gmail.com", phone: "516-043-7720", password: "password", user_type: "student" },
  { f_name: "Dennis",   l_name: "Liaw",     sex: "male",   born_on: "May 16 1987", email: "dennisliaw@gmail.com", phone: "678-455-9920", password: "password", user_type: "instructor" }
>>>>>>> 1c2d52acdac6f97c8e3e9464c1a5c9f86cbe7336
])


# t.string :f_name, null: false
# t.string :l_name, null: false
# t.string :sex, null: false
# t.date   :born_on, null: false
# t.string :email, null: false, unique: true
# t.string :phone, null: false
# t.string :password_digest, null: false
# t.string :type
# t.timestamps
