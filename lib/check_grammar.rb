def check_grammar(text)
    fail "Not a sentence." if text.empty?
    if text[0] != text[0].upcase               
        return false
    else 
        if text[-1] == "." || text[-1] == "?" || text[-1] == "!"
            return true
        else 
            return false
        end
    end

end
