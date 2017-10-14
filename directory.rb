#this method prints the heading of the student list
def print_header
  puts "The students of Villains Academy"
  puts "--------------------------"
end

#this method prints the students names and cohorts
def print_list(students)
  students.each_with_index do |student,index|
      puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

#this method prints the students names and cohorts according to some restrictions
def print_list_letter(students)
  puts "You want to see students' names starting with which letter?"
  letter=gets.chomp
  students.each do |student|
    #only print students whose first letter of the name is the same as specified letter
    if student[:name][0].downcase==letter
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

#this method prints the students names and cohorts according to some restrictions
def print_list_size(students)
  size=12
  students.each do |student|
    #only print students whose total name (including spaces) is shorter than 12 characters
    if student[:name].length<=size
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

#this method prints the footer of the student list which includes the current student count.
def print_footer(students)
  print "Overall, we have #{students.count} great students but we are only printing "
  puts "the ones according to your specifications."
end

#this method allow for the creation of the student list database by asking the user for input and storing it in an array and hashes
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
print_list(students)
print_list_size(students)
print_footer(students)
