require "make_snippet"

RSpec.describe "make_snippet method" do
    context "given an empty string" do
        it "returns an empty string" do
            result = make_snippet("")
            expect(result).to eq ""
        end
    end

    context "given a string with 5 words" do
        it "return the string" do
            result = make_snippet("one two three four five")
            expect(result).to eq "one two three four five"
        end
    end

    context "given a string with 6 words" do
        it "return the five words with a ..." do
            result = make_snippet("one two three four five six")
            expect(result).to eq "one two three four five..."
        end
    end
end