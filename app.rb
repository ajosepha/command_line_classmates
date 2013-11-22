require './lib/*'

student_scraper = Scraper.new(http://flatironschool-bk.herokuapp.com)

names = student.scraper.get_student_names

twitter = student.scraper.get_twitter

blogs = student.scraper.get_link

#can iterate
students = []
28.times do |i|
    make new student
    student << Student.new(name[i], twitter[i], blog[i])
end

