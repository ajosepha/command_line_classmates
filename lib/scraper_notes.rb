require 'open-uri'
#open the file on the internet
require 'nokogiri'
#use nokogiri to take temp file and make them useful
#if they are in html, Nokogiri will take the file return it in a nicer format
#we thenstore this file in our @html variable

Class Scraper
    
    attr_reader :html

    def initialize(url)
    download = open(url)
    @html = Nokogiri::HTML(download)
    end 

    def get_student_names
        all_the_h3s = @html.search("h3")
        all_the_h3s.collect do |h3|
           h3.text
           #collect automatically makes a new array 
           #collect automatically returns a new array
           #it automatically puts whatever it wants into the block
           #not stored in a variable
        end
        
    end    

    def get_twitter
        twitter = html.css('.twitter').text.split
        twitter.select{ |item| item.include?("@")}
    end    

    def get_blog
       #link = html.css(".social li a").text
       #optimized: blog = html.search(".blog").collect {|anchor| anchor.text}
       blogs = []
       html.search("ul.search"). each do |social_div|
            if social_div.search("a.blog").text == "Blog"
                blog_url << social_div.search("a.blog")[0]["href"]
            else
                blog_url << "none"
            end
       #trying to get an attribute out
        end
        blogs
       #returns blog
   end
end

#how would i define a test for if there is a blog or not?  if there isn't a blog, i want to add the value none to the array



