students = ['Adi', 'Adrian', 'Alex', 'Anthony', 'Ben', 'Brian', 'Bryan', 'Chloe', 'Eric', 'Jane', 'Jeff', 'Jillian', 'Joe', 'Luke', 'Matt', 'Nick', 'Nicky', 'Ralph', 'Ron', 'Ryan', 'Sandip', 'Sean', 'Shefali', 'Simon', 'Stephen']
students = students.shuffle

print "Group size? "

group_size = gets.to_i
number_of_groups = students.count / group_size

number_of_groups.times do |group_number|
  puts  "\n\nGroup #{group_number} : "
  puts "#{students.pop(group_size).join(', ')}"
end
puts ", #{students.join(', ')}\n\n" if students.any?