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

