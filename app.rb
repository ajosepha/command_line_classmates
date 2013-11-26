require './lib/scraper.rb'
require './lib/student.rb'
require 'launchy'
require 'awesome_print'

#set local variables for accesssing names, twitters & blogs
student_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com/")
names = student_scraper.get_names
twitters = student_scraper.get_twitters
blogs = student_scraper.get_blogs
        
#refactor to get rid of hard code

students = []
28.times do |i|
    students << Student.new(names[i], twitters[i], blogs[i])
end

#ap blogs

def see_blogs(blogs)
    ap blogs
end
#see_blogs(blogs)

def see_roster(names)
    ap names
end
#see_roster(names)

def see_twitters(twitter)
    ap twitter
end
#see_twitters(twitters)

def what_do_you_want_do
    puts "Hello, would you like to see a roster, blogs, or a list of names?"
    puts "If you would like to see a roster, type roster, for blogs type blogs or for names, type names."
    input = gets.chomp
        if input == "names"
        see_roster(names)
        end 
end
what_do_you_want_do
