require "grammarstats"

RSpec.describe GrammarStats do 


    describe "#check" do
        context "given and empty string" do
            it "fails" do
                grammarstats = GrammarStats.new("")
                expect { grammarstats.check("") }.to raise_error "Not a sentence."
            end
        end

        context "given a sentence with a capital letter and a full stop" do
            it "return true" do
                grammarstats = GrammarStats.new("Hi, people.")
                result = grammarstats.check("Hi, people.")
                expect(result).to eq true
            end
        end 
    
        context "given a sting without acceptable punctuation" do 
            it "return false" do
                grammarstats = GrammarStats.new("Hi, people")
                result = grammarstats.check("Hi, people")
                expect(result).to eq false
            end
        end
    
        context "given a string that does not start with capital letter" do
            it "return false" do
                grammarstats = GrammarStats.new("hi, people.")
                result = grammarstats.check("hi, people.")
                expect(result).to eq false
            end
        end
        
        context "given a string that does not start with capital letter" do
            it "return false" do
                grammarstats = GrammarStats.new("hI, People.")
                result = grammarstats.check("hI, People")
                expect(result).to eq false
            end
        end
        context "given a string starting with capital letter and an ! at the end" do
            it "return false" do
                grammarstats = GrammarStats.new("Hi, people!")
                result = grammarstats.check("Hi, people!")
                expect(result).to eq true
            end
        end
        context "given two sentences" do
            it "return false" do
                grammarstats = GrammarStats.new("Hi, People! Hi, people.")
                result = grammarstats.check("Hi, People! Hi, people.")
                expect(result).to eq true
            end
        end
        context "given two sentences" do
            it "return true" do
                grammarstats = GrammarStats.new("Hi, People! Hi, people. Hi, People! Hi, people. Hi, People! Hi, people. Hi, People! Hi, people. Hi, People! Hi, peoples")
                result = grammarstats.check("Hi, People! Hi, people. Hi, People! Hi, people. Hi, People! Hi, people. Hi, People! Hi, people. Hi, People! Hi, people")
                expect(result).to eq false
            end
        end
    end
    describe "#percentage_good" do 
        context "given two sentences" do
            it "return true" do
                grammarstats = GrammarStats.new("Hi, People! Hi, people. Hi, People! Hi, people. Hi, People! Hi, people. Hi, People! Hi, people. Hi, People! Hi, people.")
                expect(grammarstats.percentage_good).to eq 100
            end
        end
    end
end 