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

def see_blogs(blogs)
    ap blogs
end


def see_roster(names)
    ap names
end

def see_twitters(twitter)
    ap twitter
end

puts "Hello, would you like to see a roster, blogs, or a list of names?"
puts "If you would like to see a roster, type names, for blogs type blogs or for twitter, type twitter."
input = gets.chomp
    if input == "blogs"
        see_blogs(blogs)
    elsif input == "names"
        see_roster(names)
    elsif input == "twitter"
        see_twitters(twitters)
    else puts "would you like to open a random blog? y/n"
        response = gets.chomp
        if response == "y"
            #next if blogs[i] == "none"
            Launchy.open("#{blogs.sample}")
        end
        if response == "n"
            puts "would you like to open someone's blog? y/n"
            response = gets.chomp
            if response == "y"
                puts "whose blog? please type the index numer"
                see_roster(names)
                id = gets.chomp.to_i
                Launchy.open("#{students[id].blogs}")
            end
            

        end
    end

  


