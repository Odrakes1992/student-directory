=begin
students = [
{name: "Dr. Hannibal Lecter", cohort: :november},
{name: "Darth Vader", cohort: :november},
{name: "Nurse Ratched", cohort: :november},
{name: "Michael Corleone", cohort: :november},
{name: "Alex DeLarge", cohort: :november},
{name: "The Wicked Witch of the West", cohort: :november},
{name: "Terminator", cohort: :november},
{name: "Freddy Krueger", cohort: :november},
{name: "The Joker", cohort: :november},
{name: "Joffrey Baratheon", cohort: :november},
{name: "Norman Bates", cohort: :november},
]
=end

def input_students

puts "Please enter the names of the students"
puts "To finish, just hit return twice"
#create an empty array
students = []
#get the first name

name = gets.chomp
#while thename is not empty, repeat this code


while !name.empty? do
#add the student hash to the array
puts "Now type in the cohort"
cohort = gets.chomp

if !cohort.empty? && students.length > 1
  students << {name: name, cohort: cohort}
  puts "Now we have #{students.count} students"
elsif cohort.empty? && students.length > 1
  students << {name: name, cohort: :november}
  puts "Now we have #{students.count} students"
elsif cohort.empty? && students.length <= 1
  students << {name: name, cohort: :november}
  puts "Now we have #{students.count} student"
elsif !cohort.empty? && students.length <= 1
  students << {name: name, cohort: cohort}
  puts "Now we have #{students.count} student"
end

name = gets.chomp

end
students

end



def print_header
puts "The students of Villains Academy"
puts "---------------"
end

def print(students)
students.each_with_index  do |student,ind|
index = ind + 1
if student[:name].length < 18
  string =  "#{index} #{student[:name]} (#{student[:cohort]}-cohort)"
  puts string.center(18)
  puts "Howdy #{index} #{student[:name]} friends".center(18)
end
end  
end

def print_footer(names)
puts "Overall, we have #{names.count} great students"
end


students = input_students
print_header
print(students)
print_footer(students
)