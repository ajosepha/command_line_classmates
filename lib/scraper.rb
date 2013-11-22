require 'open-uri'
#open the file on the internet
require 'nokogiri'
#use nokogiri to take temp file and make them useful
#if they are in html, Nokogiri will take the file return it in a nicer format
#we thenstore this file in our @html variable


class Scraper

    attr_reader :html

    def initialize(url)
        #need a different url in order for the class to initiate
        download = open(url)
        #this is a temporary variable you use to pass into @html
        #can do this because of gem
        @html = Nokogiri::HTML(download)
        #treat Nokogiri as a class
        #can go inside the class the same way you would go inside a folder
    end    

    def get_student_names
        student = html.search("h3").to_s.split("</h3><h3>")
        # student[0]=student[0][4..-1]
        # student[-1] = student[-1][0..-6]
        # return student
        #student_string = "#{student}"
        #student_string.gsub("[<h3>]", " ") 
        #student.select {|name| name.String?}
        #puts student.inspect
        #student is an array.  Need to get the name out of the array
        # new_student = [ ]
        # student.each do |name|
        #     name.delete("<h3>")
        #     name.to_s
        #     new_student << name  
        #     #name.gsub("<h3>", " ")
        # end
        #    puts new_student.inspect

        #puts student.inspect
    end

       
        #puts student.inspect

            #CSS selector can go inside of the method    
   

    def get_twitter
        twitter = html.css('.twitter').text.split
        twitter.select{ |item| item.include?("@")}
    end    

    def get_link
       #link = html.css(".social li a").text
       blog = html.search(".blog").map {|link| link["href"]}
       puts blog
        #what do i know about where the link is
        #above the last a
    end   






    #create 2 more methods--one that will get the blogs, and one that will get the twitter URLs
    #with twitter URLs, they are all the same--just need to get twitter user name
    #blog will be the challenge
    #where does the blog exist? Inside an anchor tag, in an href attribute
    #deliverable--two more methods, one with twitter username and one with blog URLs
end   

my_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com") 
# puts my_scraper.get_link
# puts my_scraper.get_twitter
puts my_scraper.get_student_names

#why did I get an error when doing this?
#why don't i have open-uri
#why is NOTHING WORKING TODAYYYYYYYY