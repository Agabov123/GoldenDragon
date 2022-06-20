class Track
    def initialize(title, artist) # title and artist are both strings
        @title = title 
        @artist = artist
    end
  
    def matches?(keyword) 
        if @artist.include?(keyword) || @title.include?(keyword)
            return true
        else 
            return false
        end 
    end
end
