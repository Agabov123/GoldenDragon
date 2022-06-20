require "todo_list"

RSpec.describe TodoList do 
    context "given no task" do
        it "has an empty list" do
            todo_list = TodoList.new
            expect(todo_list.incomplete).to eq []
        end
    end
    context "given one task" do
        it "has 1 task" do
            todo_list = TodoList.new
            todo_list.add("Wash the car")
            expect(todo_list.incomplete).to eq ["Wash the car"]
        end 
    end  
    context "given two tasks" do
        it "has 2 tasks" do
            todo_list = TodoList.new
            todo_list.add("Wash the car")
            todo_list.add("Wash the dog")
            expect(todo_list.incomplete).to eq ["Wash the car", "Wash the dog"]
        end 
    end 
    context "given two tasks, one complete" do
        it "has 1 tasks" do
            todo_list = TodoList.new
            todo_list.add("Wash the car")
            todo_list.add("Wash the dog")
            todo_list.complete("Wash the car")
            expect(todo_list.incomplete).to eq ["Wash the dog"]
        end 
        
        it "fails" do
            todo_list = TodoList.new
            todo_list.add("Wash the car")
            expect { todo_list.complete("Wash the cat") }.to raise_error "Task not found."
        end 
    end
    context "given two tasks" do
        it "returns list of finished tasks" do
            todo_list = TodoList.new
            todo_list.add("Wash the car")
            todo_list.add("Wash the dog")
            expect(todo_list.complete("Wash the car")).to eq ["Wash the car"]
        end
    end 
    context "given three tasks" do
        it "returns list of finished tasks" do
            todo_list = TodoList.new
            todo_list.add("Wash the car")
            todo_list.add("Wash the cat")
            todo_list.add("Wash the frog")
            expect(todo_list.give_up).to eq ["Wash the car", "Wash the cat", "Wash the frog"]
        end  
    end
      


end
