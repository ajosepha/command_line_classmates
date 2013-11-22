require_relative '../lib/student.rb'

#initialize a new instance

hunger_games = Student.new("Katniss", "hungerz", "galzies")

describe Student, "#initialize" do
    it "is named Katness, twitter is hungerz, and galzies is blog" do
        expect(Student.new.name.twitter.blog).to eq("Katniss", "hungerz", "galzies")
    end
end



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