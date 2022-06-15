
class GrammarStats
    def initialize(text)
      # ...
      @text = text
      @percentage = 0
      @@arr = []
    end
     
    def check(text) # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
      fail "Not a sentence." if text.empty?
      array_of_sentences = text.scan(/[^.]*./)
      array_of_sentences.each do |line| 
        if line[0] != line[0].upcase               
            @@arr << "false"
        else 
            if line[-1] == "."
                @@arr << "true"
            elsif line[-1] == "!"
                @@arr << "true"
            elsif line[-1] == "?"
                @@arr << "true"
            else 
                @@arr << "false"
            end
        end
      end
      count = 0
      count = @@arr.count("false")
      if count == 0
        return true
      else 
        return false  
      end

    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
      if @@arr.count("false") == 0
        return 100
      else 
        return (@@arr.count("true") / @@arr.length) * 100
      end
    end

end
