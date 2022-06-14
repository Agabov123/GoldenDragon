require "calculate_reading_time"

RSpec.describe "calculate_reading_time method" do
    context "given empty string" do 
        it "returns 0" do
            result = calculate_reading_time("")
            expect(result).to eq 0
        end
    end

    context "given up to 200 words in a string" do
        it "returns 1" do
            result = calculate_reading_time("one")
            expect(result).to eq 1
        end
    end
    
    context "given 400 words in a string" do
        it "returns 1" do
            result = calculate_reading_time("one " * 400 )
            expect(result).to eq 2
        end
    end

end
