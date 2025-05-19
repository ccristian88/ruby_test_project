require_relative 'crud'

users = [
    { username: "Pole", password: "password1"},
    { username: "Koga", password: "password2"},
    { username: "Jeforry", password: "password3"},
    { username: "Cristian", password: "password4"},
    { username: "Fransico", password: "password5"}
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users