require "check_grammar"

RSpec.describe "check_grammar method" do
    context "given and empty string" do
        it "fails" do
            expect { check_grammar("") }.to raise_error "Not a sentence."
        end
    end

    context "given a sentence with a capital letter and a full stop" do
        it "return true" do
            result = check_grammar("Hi, people.")
            expect(result).to eq true
        end
    end 

    context "given a sting without acceptable punctuation" do 
        it "return false" do
            result = check_grammar("Hi, people")
            expect(result).to eq false
        end
    end

    context "given a string that does not start with capital letter" do
        it "return false" do
            result = check_grammar("hi, people.")
            expect(result).to eq false
        end
    end
    
    context "given a string that does not start with capital letter and incorrect punctuation" do
        it "return false" do
            result = check_grammar("hi, people")
            expect(result).to eq false
        end
    end
end
