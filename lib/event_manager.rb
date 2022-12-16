#require "./lib/event_manager.rb"
require "csv"
puts "EventManager initialized."

# contents = File.read "./data/event_attendees.csv"
# puts contents

# lines = File.readlines "./data/event_attendees.csv"
# lines.each do |line|
#     puts line
# end

# lines = File.readlines "./data/event_attendees.csv"
# lines.each do |line|
#     columns = line.split(",")
#     p columns
# end
# - spliting the columns using ","(separator)

# lines = File.readlines "./data/event_attendees.csv"
# lines.each do |line|
#     columns = line.split(",")
#     name = columns[2]
#     puts name
# end
# - displaying firt name of all Attendees

# lines = File.readlines "./data/event_attendees.csv"
# lines.each do |line|
#     next if line == "
#     ,RegDate,first_Name,last_Name,Email_Address,HomePhone,Street,City,State,Zipcode\n"
#     columns = line.split(",")
#     name = columns[2]
#     puts name
# end

# lines = File.readlines "./data/event_attendees.csv"
# row_index = 0
# lines.each do |line|
#     row_index = row_index + 1
#     next if row_index == 1
#     columns = line.split(",")
#     name = columns[2]
#     puts name
# end
# - removing the first row.

# lines = File.readlines "./data/event_attendees.csv"
# lines.each_with_index do |line,index|
#   next if index == 0
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end
# - removing the first row. option 2

# - This solves the problem if the header row were to change in the future. 
# - It does now assume that the header row is first row within the file.
# - These solutions would be OK given our current attendees file.
# - Problems may arise if we are given a new CSV file that is generated or manipulated by another source.
# - CSV parser that we have started to create does not take into account a number of other features supported by the CSV file format.
# - Two important ones:
    # CSV files often contain comments which are lines that start with a pound (#) character
    # Columns are unable to support a value which contain a comma (,) character

# Iteration 1 - Switching over to use the CSV Library
# contents = CSV.open "./data/event_attendees.csv", headers: true
# contents.each do |row|
#   name = row[2]
#   puts name
# end

# - First we need to tell Ruby that we want it to load the CSV library. 
# - This is done through the require method which accepts a parameter of the functionality to load.
# - The library also supports the concept of headers and so we provide some additional parameters which state this file has headers.

# contents = CSV.open "./data/event_attendees.csv", headers: true, header_converters: :symbol
# contents.each do |row|
#   name = row[:first_name]
#   puts name
#   require 'pry'; binding.pry
# end
# - Accessing Columns by their Names
# - Converting the headers to symbols.

# contents = CSV.open "./data/event_attendees.csv", headers: true, header_converters: :symbol
# contents.each do |row|
#   name = row[:first_name]
#   zipcode = row[:zipcode]
#   puts "#{name} #{zipcode}"
# end
# - Accessing the zipcode is very easy using the header name. ‘Zipcode’ becomes :zipcode.
# - but we have problems. 
    # - Most zip codes are correctly expressed as a five-digit number
    # - Some zip codes are represented with less than a five-digit number
    # - Some zip codes are missing

# Iteration 2 - Cleaning up our Zip Codes.








