#adding all students to an array
students=["Dr. Hannibal Lecter",
          "Darth Vader",
          "Nurse Ratched",
          "Michael Corleone",
          "Alex DeLarge",
          "The Wicked Witch of the West",
          "Terminator",
          "Freddy Krueger",
          "The Joker",
          "Joffrey Baratheon",
          "Norman Bates"]

#this method prints the heading of the student list
def print_header
  puts "The students of Villains Academy"
  puts "--------------------------"
end

#this method prints a list from an array, it can be used for our students array or any other
def print(names)
  names.each do |name|
    puts name
  end
end

#this method prints the footer of the student list which includes the current student count.
def print_footer(names)
  puts "Overall, we have #{names.count} great students."
end

print_header
print(students)
print_footer(students)
