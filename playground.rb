users = [
    { username: "Pole", password: "password1"},
    { username: "Koga", password: "password2"},
    { username: "Jeforry", password: "password3"},
    { username: "Cristian", password: "password4"},
    { username: "Fransico", password: "password5"}
]

puts "Welcome to the authenticator"
25.times { print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attemps = 1
while attemps < 4
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    puts "Press n to quit or any other key to continue: "
    input = gets.chomp.downcase
    break if input == "n"
    attemps += 1
end