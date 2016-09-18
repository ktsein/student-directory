
def print_header
puts "The students of Villains Academy"
puts "------------"
end

def print(students)
students.each.with_index(1) do |student, index|
    puts "#{index}: #{student[:name]} (#{student[:cohort]} cohort)}"
end
end

def print_footer(students)
    puts "Overall, we have #{students.count} great students"
end

def input_students
    
    students = []
    puts "Please enter the names of the students"
    puts "To exit, just hit enter twice"
    name = gets.chomp
    puts "What is your cohort?"
    cohort = gets.chomp
    while !name.empty? && !cohort.empty? do
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students"
        name = gets.chomp
    end
    
    students
end

students = input_students
print_header
print(students)
print_footer(students)