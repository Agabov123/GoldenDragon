class TodoList
    def initialize
        @todos = []
        @comp_todos = []
    end
  
    def add(todo) 
        @todos << todo
    end
  
    def incomplete
      return @todos
    end
  
    def complete(todo)
      fail "Task not found." unless @todos.include?(todo)
      @comp_todos.push(todo)
      @todos.delete(todo)
      return @comp_todos
    end
  
    def give_up
      @todos.each do |task|
        @comp_todos << task
      end 
      @todos = []
      return @comp_todos
    end
  end