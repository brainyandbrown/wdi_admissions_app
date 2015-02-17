class User < ActiveRecord::Base

has_secure_password

def self.students
  User.where user_type: "students"
end

def self.instructors
  User.where user_type: "instructor"
end

def self.admissions
  User.where user_type: "admissions"
end

end
