class Todo
    def initialize(task) 
        @task = task

        @done = []
    end
  
    def task
      return @task
    end
  
    def mark_done!(task)
      fail "Task not found." if task.empty?  
      @done << @task
    end
  
    def done?(task)
      if @done.include? @task 
        return true 
      else 
        return false
      end 
    end
end