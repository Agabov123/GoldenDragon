require "music_library"

RSpec.describe MusicLibrary do
    it "returns track list" do
        music_library = MusicLibrary.new
        track = double :track, matches?: true
        music_library.add(track)
        expect(music_library.search("Dead")).to eq [track]
    end 
    it "returns track list" do 
        music_library = MusicLibrary.new
        track1 = double :track, matches?: true
        track2 = double :track, matches?: true
        music_library.add(track1)
        music_library.add(track2)
        
        expect(music_library.all).to eq [track1, track2]
    end 

end 