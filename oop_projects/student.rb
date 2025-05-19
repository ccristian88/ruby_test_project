class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  # def run
  #   puts "Hey I am running"
  # end

  # def self.identify_yourself
  #   puts "Hey I am a class method"
  # end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email address: #{@email}"
  end
end

pole = Student.new("Pole", "Mamoru", "polemamoru@gmail.com", "pole_dev", "password1")
jone = Student.new("Jone", "Doe", "jonedoe@gmail.com", "jone_dev", "password2")
# student.run
# Student.identify_yourself
puts pole
puts jone
pole.last_name = jone.last_name
puts pole