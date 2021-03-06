require "password_checker"

RSpec.describe PasswordChecker do
    it "returns true if password is at leat 8 characters" do
        password_checker = PasswordChecker.new
        result = password_checker.check("qwertyui")
        expect(result).to eq true
    end 

    it "returns false if password is less than 8 characters" do
        password_checker = PasswordChecker.new
        expect { password_checker.check("qwer") }.to raise_error "Invalid password, must be 8+ characters."
    end 
end
