require "counter"

RSpec.describe Counter do
    it "initially reports count of 0" do 
        counter = Counter.new
        expect(counter.report).to eq "Counted to 0 so far."
    end

    it "return a count of added value ith one aaddition" do 
        counter = Counter.new 
        counter.add(7)
        expect(counter.report).to eq "Counted to 7 so far."
    end

end