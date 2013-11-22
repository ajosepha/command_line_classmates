class Student
    
    attr_accessor :name, :twitter, :blog

    def initialize(name, twitter, blog)
        @name  = name
        @twitter = twitter
        @blog = blog
    end

        
end

#hunger_games = Student.new("Katniss", "@dist12", "ihartzgale")