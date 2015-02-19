#("f_name", "l_name", "sex", "email", "phone", "password_digest", "created_at", "updated_at")

Student.destroy_all
Producers.destroy_all
Instructor.destroy_all
Prospects.destroy_all

Student.create([
  { f_name: "Angelina", l_name: "Bethoney", sex: "female", born_on: "April 13 1989", email: "ambethoney@yahoo.com", phone: "774-291-0958", password: "password" },
  { f_name: "Sade",     l_name: "Stevens",  sex: "female", born_on: "November 10 1991", email: "sadeshakur@gmail.com", phone: "516-043-7720", password: "password" }
])

Instructor.create(
  { f_name: "Dennis",   l_name: "Liaw",     sex: "male",   born_on: "May 16 1987", email: "dennisliaw@gmail.com", phone: "678-455-9920", password: "password"}
  )

Producer.create(
  { f_name: "Dana",     l_name: "DeFilipo", sex: "female", born_on: "April 14 1991", email: "dana.dflip@gmail.com", phone: "516-987-8427", password: "password"}
  )

Prospects.create([
{ students_id: Student.find_by(email: "ambethoney@yahoo.com").id },
{ students_id: Student.find_by(email: "sadeshakur@gmail.com").id }
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
