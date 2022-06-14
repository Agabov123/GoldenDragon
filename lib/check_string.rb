def check_string(text)
    fail "Not a sentence." if text.empty?
    if text.include? "#TODO"
        return true
    else
        return false
    end
end