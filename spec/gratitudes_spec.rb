require 'gratitudes'

RSpec.describe Gratitudes do
  it "reminds the user to do a task" do
    gratitude = Gratitudes.new
    resultIn = gratitude.add("The sun, The moon and The truth")
    result = "Be grateful for: " + resultIn.join(",").to_s 
    expect(result).to eq "Be grateful for: The sun, The moon and The truth" 
  end
end
