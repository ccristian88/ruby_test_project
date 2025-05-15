users = [
    { username: "Pole", password: "password1"},
    { username: "Koga", password: "password2"},
    { username: "Jeforry", password: "password3"},
    { username: "Cristian", password: "password4"},
    { username: "Fransico", password: "password5"}
]

def auth_user(username, password, list_of_users)
    list_of_users.each do |user|
        if user[:username] == username && user[:password] == password
            return user 
        end
    end
    "Credentials were not correct"
end

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
    authentication = auth_user( username, password, users )
    puts authentication
    puts "Press n to quit or any other key to continue: "
    input = gets.chomp.downcase
    break if input == "n"
    attemps += 1
end
puts "You have exceeded the number of attempts" if attempts == 4