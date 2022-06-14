# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature



```ruby
is_correct = check_grammar(text)

# * text is a string with words in it
# * is_correct is a boolean depending on wheather it checks out

```

## 3. Create Examples as Tests

```ruby
# 1
check_grammar("")
# fail 
# 2 
check_grammar("Hi, people.")
# => true
# 3
check_grammar("Hi, people")
# => false
# 4
check_grammar("hi, people.")
# => false
# 5
check_grammar("HI, PEOPLE.")
# => true 
# 6
check_grammar("Hi, people!")
# => true
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._