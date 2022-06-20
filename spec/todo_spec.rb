require "todo"

RSpec.describe Todo do
    context "given empty string" do 
        it "fails" do 
            todo = Todo.new("")
            expect { todo.mark_done!("") }.to raise_error "Task not found."
        end 
    end
    context "initially" do 
        it "return the task" do 
            todo = Todo.new("Task1")
            expect(todo.task).to eq "Task1"
        end 
    end 
    
    context "new task" do 
        it "return the task" do 
            todo = Todo.new("Task1")
            expect(todo.mark_done!("Task1")).to eq ["Task1"]
        end 
    end 
    context "given task" do 
        it "return true" do 
            todo = Todo.new("Task1")
            todo.mark_done!("Task1")
            expect(todo.done?("Task1")).to eq true
        end 

        it "return false" do 
            todo = Todo.new("Task1")
            expect(todo.done?("Task1")).to eq false
        end 

    end 
end 
