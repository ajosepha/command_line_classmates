require 'open-uri'
#open the file on the internet
require 'nokogiri'
require 'ap'
#use nokogiri to take temp file and make them useful
#if they are in html, Nokogiri will take the file return it in a nicer format
#we thenstore this file in our @html variable


class Scraper

    attr_reader :html

    def initialize(url)
      
        download = open(url)
  
        @html = Nokogiri::HTML(download)
      
    end    

    def get_names
        student = html.search("h3")
            student.collect do |name|
            name.text
        end

    end

       
        #puts student.inspect

            #CSS selector can go inside of the method    
    
    def get_twitters
        html.search(".back").collect do |elements|
                if elements.search(".twitter").text.include?("@")
                        elements.search(".twitter")[0]["href"]
                else
                        "none"
                end
        end
    end

    def get_blogs
        blog_array = []
        html.search("ul.social").each do |anchor|
                if anchor.search(".blog").text == "Blog"
                        blog_array << anchor.search(".blog")[0]["href"]
                else
                        blog_array << "none"
                end
        end
        blog_array
    end 

 
    # def get_twitters
    #     all_twitter = @html.search(".student")
    #     all_twitter.collect do |element| 
    #         if element.search(".twitter")[0].nil?
    #             "none"
    #             else element.search(".twitter @href")
    #             element.search(".twitter @href")
    #         end
    #     end
        
    # end    


end   

  my_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com") 
 
 #puts my_scraper.get_blogs
 #puts my_scraper.get_names
 #puts my_scraper.get_twitters

#why is NOTHING WORKING TODAYYYYYYYY