# # You are tasked with building an app to track hiring and placement of new hires (NHs).  Create a console app.  
         
# # This app will have a Main Method that will call a function that upon passing a parameter of the new hire name, 
# # it will print out all their details such as team name, title, seating floor (1-5), and building name (building one, building two).
         
# # If Team Member is found, the information will be accepte, otherwise an exception should be thrown s

# # build app that tracks hiring/placement of new hires
# # #method(NHname) -> print out team name, title, seating floor, building name
# # => if found, print; otherwise exception

# class Company
#   attr_accessor :employee_pool

#   def initialize
#     @employee_pool = []
#   end

#   def find_employee(employee_name)
#     @employee_pool.each do |current_employee|
#       if current_employee.name == employee_name
#         puts current_employee.name
#         puts current_employee.team_name
#         puts current_employee.title 
#         puts current_employee.floor
#         puts current_employee.building
#       else 
#         puts "I cannot find that employee! Please try another name or search"
#       end
#     end
#   end 


#   def add_to_pool(employee)
#     @employee_pool << employee
#   end

# end

# class Employee
#   attr_reader :name, :team_name, :title, :floor, :building

#   def initialize(employee_data)
#     @name = employee_data[:name]
#     @team_name = employee_data[:team_name]
#     @title = employee_data[:title]
#     @floor = employee_data[:floor]
#     @building = employee_data[:building]
#   end

# end


# class NewHire < Employee
#   def initialize(new_hire_data)
#     super  
#   end
# end


# # if find employee => display data; else throw exception/message
# class Finder
 
# end 

# new_hire = NewHire.new(
#                       name: "Phuoc",
#                       team_name: "Accounting",
#                       title: "Temp",
#                       floor: 3,
#                       building: "Kellogg Building"
#                       )
# company = Company.new
# puts "This is the employee pool"
# company.add_to_pool(new_hire)
# p company.employee_pool

# company.find_employee("Phuoc")
# company.find_employee("Pooja")

