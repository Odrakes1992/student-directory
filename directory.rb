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

@students = []

def input_students

  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  
  #get the first name

  name = gets.chomp
  #while thename is not empty, repeat this code


  while !name.empty? do
  #add the student hash to the array
    puts "Now type in the cohort"
    cohort = gets.chomp

    if !cohort.empty? && @students.length > 1
      @students << {name: name, cohort: cohort}
      puts "Now we have #{@students.count} students"
    elsif cohort.empty? && @students.length > 1
      @students << {name: name, cohort: :november}
      puts "Now we have #{@students.count} students"
    elsif cohort.empty? && @students.length <= 1
      @students << {name: name, cohort: :november}
      puts "Now we have #{@students.count} student"
    elsif !cohort.empty? && @students.length <= 1
      @students << {name: name, cohort: cohort}
      puts "Now we have #{@students.count} student"
    end

    name = gets.chomp

  end
  @students

end


def print_header
  puts "The students of Villains Academy"
  puts "---------------"
end

def print

  puts "What cohort do you want to see, if it doesn't exist nothing will show"  
  cohort = gets.chomp

  while cohort.empty?
    puts "Try again"
    cohort = gets.chomp
      if !cohort.empty?
        break
      end
  end

  @students.map do |student|
    if student[:cohort] == cohort
      string = " #{student[:name]} (#{student[:cohort]}-cohort)"
      puts string.center(18)
    end
  end  
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end


def interactive_menu
  loop do 
    print_menu
    process(gets.chomp)
  end

end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  print
  print_footer
end

def process(selection)
  case selection 
  when "1"
    students = input_students
  when "2"
    print_header
    print
    print_footer
  when "9"
    exit # this will cause the program to terminate
  else
    puts "I don't know what you meant, try again"
  end
end

interactive_menu
