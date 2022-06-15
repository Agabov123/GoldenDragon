class MusicList

    def initialize
        @tracks = []
    end

    def add(track) 
        @tracks << track
    end

    def list
        @tracks
    end

    def remove(track)
        fail "No song found." unless @tracks.include?(track)
        @tracks.delete(track)
    end
    
end