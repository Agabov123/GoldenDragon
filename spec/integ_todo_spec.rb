require "todo"
require "todo_list"

RSpec.describe "integ_todo" do 
    context "after adding some entries" do 
        it "lists out the entries added" do 
            todo_list = TodoList.new
            todo_1 = Todo.new("Task1")
            todo_2 = Todo.new("Task2")
            todo_list.add(todo_1)
            todo_list.add(todo_2)
            expect(todo_list.incomplete).to eq [todo_1, todo_2]
        end 
        describe "#complete" do 
            it "returns complete tasks" do 
                todo_list = TodoList.new
                todo_1 = Todo.new("Task1")
                todo_2 = Todo.new("Task2")
                todo_list.add(todo_1)
                todo_list.add(todo_2)
                expect(todo_list.complete(todo_1)).to eq [todo_1]
            end
            
            it "returns complete tasks" do 
                todo_list = TodoList.new
                todo_1 = Todo.new("Task1")
                todo_2 = Todo.new("Task2")
                todo_list.add(todo_1)
                todo_list.add(todo_2)
                todo_list.complete(todo_1)
                expect(todo_list.incomplete).to eq [todo_2]
            end 
        end 
    end 

end