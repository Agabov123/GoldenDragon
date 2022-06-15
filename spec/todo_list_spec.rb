require "todo_list"

RSpec.describe TodoList do 
    context "given no task" do
        it "has an empty list" do
            todo_list = TodoList.new
            expect(todo_list.list).to eq []
        end
    end
    context "given one task" do
        it "has 1 task" do
            todo_list = TodoList.new
            todo_list.add("Wash the car")
            expect(todo_list.list).to eq ["Wash the car"]
        end 
    end  
    context "given two tasks" do
        it "has 2 tasks" do
            todo_list = TodoList.new
            todo_list.add("Wash the car")
            todo_list.add("Wash the dog")
            expect(todo_list.list).to eq ["Wash the car", "Wash the dog"]
        end 
    end 
    context "given two tasks, one complete" do
        it "has 1 tasks" do
            todo_list = TodoList.new
            todo_list.add("Wash the car")
            todo_list.add("Wash the dog")
            todo_list.complete("Wash the car")
            expect(todo_list.list).to eq ["Wash the dog"]
        end 
    end
    context "given task not found" do
        it "fails" do
            todo_list = TodoList.new
            todo_list.add("Wash the car")
            expect { todo_list.complete("Wash the cat") }.to raise_error "Task not found."
        end 
    end  


end
