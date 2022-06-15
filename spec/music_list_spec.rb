require "music_list"

RSpec.describe MusicList do
    context "given no songs" do
        it "returns empty list" do
            music_list = MusicList.new
            expect(music_list.list).to eq []
        end 
    end 

    context "given one song" do 
        it "returns one song" do 
            music_list = MusicList.new
            music_list.add("Song1")
            expect(music_list.list).to eq ["Song1"]
        end 
    end
    
    context "given two songs" do 
        it "returns two songs" do 
            music_list = MusicList.new
            music_list.add("Song1")
            music_list.add("Song2")
            expect(music_list.list).to eq ["Song1", "Song2"]
        end 
    end 

    context "given two song, one removed" do 
        it "returns one song" do 
            music_list = MusicList.new
            music_list.add("Song1")
            music_list.add("Song2")
            music_list.remove("Song1")
            expect(music_list.list).to eq ["Song2"]
        end 
    end 

    context "given wrong name for song to be removed" do
        it "fails" do
            music_list = MusicList.new
            music_list.add("Song1")
            expect { music_list.remove("Song3") }.to raise_error "No song found."
        end 
    end

end 
