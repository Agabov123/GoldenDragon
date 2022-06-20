require "music_library"
require "track"

RSpec.describe "integration" do
    it "lists all tracks" do
        music_library = MusicLibrary.new
        track = Track.new("Dead Inside", "Skillet")
        expect(music_library.add(track)).to eq [track]
    end
    it "lists all tracks" do
        music_library = MusicLibrary.new
        track1 = Track.new("Dead Inside", "Skillet")
        track2 = Track.new("Monster", "Skillet")
        music_library.add(track1)
        music_library.add(track2)
        expect(music_library.all).to eq [track1, track2]
    end 
    it "lists all tracks" do
        music_library = MusicLibrary.new
        track1 = Track.new("Dead Inside", "Skillet")
        track2 = Track.new("Monster", "Skillet")
        music_library.add(track1)
        music_library.add(track2)
        expect(music_library.search("Dead")).to eq [track1]
    end  

end
