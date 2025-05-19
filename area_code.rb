dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

def get_city_names(somehash)
  somehash.keys.each do |key|
    puts "#{key} "
  end
end

def get_area_code(somehash, key)
  somehash[key]
end

loop do

  puts "Welcome to Area code dictionary"
  25.times { print "-" }
  puts
  puts "Here are city names you can see"
  get_city_names(dial_book)
  puts "Enter the city name which you get the code for"
  city_name = gets.chomp
  if dial_book.include?(city_name)
    code = get_area_code(dial_book, city_name)
    puts "This is the code: #{code}"
  else 
    puts "valid city name"
  end
  puts "Are you continue to find area code? Y/N";
  answer = gets.chomp.downcase
  break if answer != "y"
end

