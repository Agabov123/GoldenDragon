require "track"

RSpec.describe Track do
    it "returns true if the keyword matches" do
        track = Track.new("Dead Inside", "Skillet")
        expect(track.matches?("Dead")).to eq true
    end 
    it "returns false if the keyword does not match" do
        track = Track.new("Dead Inside", "Skillet")
        expect(track.matches?("Monster")).to eq false
    end 
    it "returns false if the keyword does not match" do
        track = Track.new("Dead Inside", "Skillet")
        expect(track.matches?("dead")).to eq false
    end 

end 