#this method prints the heading of the student list
def print_header
  puts "The students of Villains Academy"
  puts "--------------------------"
end

#this method prints the students names and cohorts
def print(students,letter)
  students.each_with_index do |student,index|
    #only print students whose first letter of the name is the same as specified letter
    if student[:name][0].downcase==letter
      puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

#this method prints the footer of the student list which includes the current student count.
def print_footer(students)
  puts "Overall, we have #{students.count} great students but we are only printing the ones starting with your requested letter."
end

def input_students
  puts "Please enter the name of the students."
  puts "To finish, just press \"return\" twice (or once if you don't want to add any students ;))"
  #first we create an empty array to store the information
  students= []
  #now we start getting the list of students from the user
  name= gets.chomp
  #we use a loop to collect all names until the input is empty
    while !(name.empty?)
      #first we add the inputted name to the array via a hash
      students.push({:name=>name, :cohort=>:november})
      #then we say how many students we now have
      puts "Now we have #{students.count} students."
      #we then ask for a new student name from the user and change the variable name restarting the loop
      name=gets.chomp
    end
  #to finalize we return the list of students (not putting, just returning)
  students
end

students = input_students
print_header
print(students,"a")
print_footer(students)
