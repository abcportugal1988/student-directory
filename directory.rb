#adding all students to an array
students=[["Dr. Hannibal Lecter", :november],
          ["Darth Vader", :november],
          ["Nurse Ratched", :november],
          ["Michael Corleone", :november],
          ["Alex DeLarge", :november],
          ["The Wicked Witch of the West", :november],
          ["Terminator", :november],
          ["Freddy Krueger", :november],
          ["The Joker", :november],
          ["Joffrey Baratheon", :november],
          ["Norman Bates", :november]
          ]

#this method prints the heading of the student list
def print_header
  puts "The students of Villains Academy"
  puts "--------------------------"
end

#this method prints the students names and cohorts
def print(students)
  students.each do |student|
    puts "#{student[0]} (#{student[1]} cohort)"
  end
end

#this method prints the footer of the student list which includes the current student count.
def print_footer(students)
  puts "Overall, we have #{students.count} great students."
end

print_header
print(students)
print_footer(students)
