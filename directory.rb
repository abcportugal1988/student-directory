#adding all students to an array
students=["Dr. Hannibal Lecter","Darth Vader","Nurse Ratched","Michael Corleone",
  "Alex DeLarge","The Wicked Witch of the West", "Terminator", "Freddy Krueger", "The Joker",
  "Joffrey Baratheon","Norman Bates"]
#and now we print them
puts "The students of Villains Academy"
puts "--------------------------"
#we use the each method to print each student from the students array
students.each do |student|
  puts student
end
#we then add a sentence which provides a count - using the .count method - of the total number of students
puts "Overall, we have #{students.count} great students."
