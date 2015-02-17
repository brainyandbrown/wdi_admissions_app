# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

INSERT INTO students(:f_name, :l_name, :sex, :born_on, :email, :phone, :password_digest) VALUES{
  ["Angelina", "Bethoney", "female", "04/13/1989", "ambethoney@yahoo.com", "774-291-0958", "password1"],
  ["Dana", "DeFilipo", "female", "04/14/1991", "dana.dflip@gmail.com", "516-987-8427", "dflip"],
  ["Sade", "Stevens", "female", "11/10/1991", "sadeshakur@gmail.com", "516-043-7720", "cheese"],
  ["Dennis", "Liaw", "male", "05/16/1987", "dennisliaw@gmail.com", "678-455-9920", "dennis"]
}
