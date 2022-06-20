require "diary_entry"

RSpec.describe DiaryEntry do
    it "constructs" do
        diary_entry = DiaryEntry.new("my_Title", "my_Contents")
        expect(diary_entry.title).to eq "my_Title"
        expect(diary_entry.contents).to eq "my_Contents"
    end

    describe "#count_words" do
        xit "returns the number of words in the contents" do
            diary_entry = DiaryEntry.new("my_Title", "some contents here")
            expect(diary_entry.count_words).to eq 3
        end
        
        xit "returns zero when contents are empty" do
            diary_entry = DiaryEntry.new("my_Title", "")
            expect(diary_entry.count_words).to eq 0
        end
    end
    describe "#reading_time" do
        context "when wpm is a sensible number" do 
            xit "returns the ceiling of the number of minutes it takes to read the contents" do 
                diary_entry = DiaryEntry.new("my_Title", "one " * 550)
                expect(diary_entry.reading_time(200)).to eq 3
            end 
        end 
        context "when wpm is 0" do 
            xit "fails" do 
                diary_entry = DiaryEntry.new("my_Title", "one two ")
                expect{ diary_entry.reading_time(0) }.to raise_error "Reading speed must be above zero."
            end 
        end 
    end
    
    describe "#reading_chunk" do
        context "contents readable within the given minites" do 
            xit "returns full contents" do 
                diary_entry = DiaryEntry.new("my_Title", "one two three")
                chunk = diary_entry.reading_chunk(200, 1)
                expect(chunk).to eq "one two three"
            end 
        end 
        context "when wpm is 0" do 
            xit "fails" do 
                diary_entry = DiaryEntry.new("my_Title", "one two ")
                expect{ diary_entry.reading_chunk(0, 5) }.to raise_error "Reading speed must be above zero."
            end 
        end 
        context "contents not readable within the given minites" do 
            xit "returns a readable chunk" do 
                diary_entry = DiaryEntry.new("my_Title", "one two three")
                chunk = diary_entry.reading_chunk(2, 1)
                expect(chunk).to eq "one two"
            end 
            xit "returns next chunk, next time we are asked" do 
                diary_entry = DiaryEntry.new("my_Title", "one two three")
                diary_entry.reading_chunk(2, 1)
                chunk = diary_entry.reading_chunk(2, 1)
                expect(chunk).to eq "three"
            end
            xit "restarts after reading the whole contents" do 
                diary_entry = DiaryEntry.new("my_Title", "one two three")
                diary_entry.reading_chunk(2, 1)
                diary_entry.reading_chunk(2, 1)
                chunk = diary_entry.reading_chunk(2, 1)
                expect(chunk).to eq "one two"
            end
            xit "restarts if finishes exaclty on the end" do 
                diary_entry = DiaryEntry.new("my_Title", "one two three")
                diary_entry.reading_chunk(2, 1)
                diary_entry.reading_chunk(1, 1)
                chunk = diary_entry.reading_chunk(2, 1)
                expect(chunk).to eq "one two" 
            end
        end 
    end 
end
