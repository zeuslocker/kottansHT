puts 'Enter variable A'
a = gets.chomp
puts 'Enter action (+-/*)'
act = gets.chomp
puts 'Enter variable B'
b = gets.chomp
puts a.to_f.send(act, b.to_f)
