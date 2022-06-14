require "check_string"

RSpec.describe "check_string method" do
    context "given empty string" do
        it "fails" do
            expect { check_string("") }.to raise_error "Not a sentence."
        end
    end

    context "given string that includes #TODO" do
        it "returns true" do
            result = check_string("List: #TODO one, #TODO two...")
            expect(result).to eq true
        end
    end

    context "given string without #TODO" do 
        it "returns false" do
            result = check_string("List: one, two, three...")
            expect(result).to eq false
        end
    end

    context "given string that includes TODO" do
        it "returns false" do
            result = check_string("List: TODO one, TODO two...")
            expect(result).to eq false
        end
    end

    context "given string that includes #todo" do
        it "returns false" do
            result = check_string("List: #todo one, #todo two...")
            expect(result).to eq false
        end 
    end

end