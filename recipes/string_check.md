# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2. Design the Method Signature



```ruby
is_correct = check_string(text)

# * text is a string with words in it
# * is_correct is a boolean depending on wheather it checks out

```

## 3. Create Examples as Tests

```ruby
# 1
check_string("")
# fail 
# 2 
check_string("#TODO")
# => true
# 3
check_string("List: one two three")
# => false
# 4
check_string("List: #TODO one, #TODO two...")
# => true
# 5
check_string("#todo")
# => false
# 6
check_string("TODO")
# => false 
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._