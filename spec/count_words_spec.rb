require "count_words"

RSpec.describe "count_words method" do
    context "given an empty string" do
        it "returns 0" do
            result = count_words("")
            expect(result).to eq 0
        end
    end
    context "given a string with 3 words" do
        it "returns 3" do
            result =count_words("one two three")
            expect(result).to eq 3
        end
    end
end