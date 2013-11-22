require_relative '../lib/student.rb'

#initialize a new instance


describe Student, "#initialize" do

    it "should return the name of the student" do
        expect(Student.new("Ariel", "stuff", "more_stuff").name).to eq("Ariel")
    end

    it "should return the twitter of the student" do
        expect(Student.new("Ariel", "tweetz", "rarely").twitter).to eq("tweetz")
    end
    
    it "should return the blog of the student" do
        expect(Student.new("Ariel", "tweetz", "rarely").blog).to eq("rarely")
    end
    

end

# I don't know why this fails
# describe Student, "#initialize" do
#     it "is named Katness, twitter is hungerz, and galzies is blog" do
#         expect(Student.new.initialize).to eq("Katniss", "hungerz", "galzies")
#     end
# end



# require_relative '../dice'

# describe Dice, "#roll" do

#   it "should return an Integer" do
#     expect(Dice.new.roll).to be_a(Integer)
#   end

#   it "should return a number greater than 0" do
#     Dice.new.roll.should be > 0
#   end

#   it "should return a number less than 7" do
#     Dice.new.roll.should be < 7
#   end

# end