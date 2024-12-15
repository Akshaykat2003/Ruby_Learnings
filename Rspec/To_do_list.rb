# Write RSpec tests to verify that a TodoList application allows adding, completing, and removing tasks. 
# Include tests for marking tasks as complete and ensuring tasks cannot be added with an empty title.

class TodoList
  attr_reader :tasks

  def initialize
    @tasks = []
  end

  def add_task(title)
    raise "Task title cannot be empty" if title.strip.empty?
    @tasks << {title:title,completed:false}
  end

  def complete_task(index)
    return if index < 0 || index >= @tasks.length
    @tasks[index][:completed] = true
  end


 
  def remove_task(index)
    return if index < 0 || index >= @tasks.length
    @tasks.delete_at(index)
  end

  def completed_tasks
    @tasks.select { |task| task[:completed] }
  end

  def pending_tasks
    @tasks.reject { |task| task[:completed] }
  end
end