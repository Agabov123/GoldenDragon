def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    fail "Not a sentence." if text.empty?
    array_of_sentences = text.scan(/[^.]*./)
    p array_of_sentences
    arr = []
    array_of_sentences.each do |line| 
      if line[0] != line[0].upcase               
          arr << "false"
      else 
          if line.include? "." 
              arr << "true"
          elsif line.include? "!"
              arr << "true"
          elsif line.include? "?"
              arr << "true"
          else 
              arr << "false"
          end
      end
    end
    count = 0
    count = arr.count("false")
    p arr
    p count
    if count == 0
      return true
    else 
      return false  
    end

end
check("Hi, People! Hi, people. Hi, People! Hi, people. Hi, People! Hi, people. Hi, People! Hi, people. Hi, People! Hi, peoples.")