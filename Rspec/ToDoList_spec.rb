

require_relative "To_do_list"


RSpec.describe TodoList do
  let(:todo_list) { TodoList.new }

  describe '#add_task' do
    it 'adds a task to the list' do
      todo_list.add_task('Buy groceries')
      expect(todo_list.tasks).to include({ title: 'Buy groceries', completed: false })
    end

    it 'raises an error when adding a task with an empty title' do
      expect { todo_list.add_task('') }.to raise_error("Task title cannot be empty")
      expect { todo_list.add_task('   ') }.to raise_error("Task title cannot be empty")
    end
  end

  describe '3complete_task' do
    it "marks a task as completed" do
      todo_list.add_task('Buy groceries')
      todo_list.complete_task(0)
      expect(todo_list.tasks[0][:completed]).to be true
    end

    it "does not mark a task as completed if the index is out of bounds" do
      todo_list.add_task('Buy groceries')
      expect{todo_list.complete_task(1)}.not_to change{todo_list.tasks[0][:completed]}
    end
  end  

  describe'#remove_task' do
    it "removes a task from the list" do
      todo_list.add_task("Buy groceries")
      todo_list.remove_task(0)
      expect(todo_list.tasks).to be_empty
      expect(todo_list.tasks.size).to eq(0)
      # expect(todo_list.tasks).not_to include({title: "Buy groceries", completed: false})
    end
  end

  describe "#completed_tasks" do
    it"return an array of completed tasks" do
      todo_list.add_task("Buy groceries")
      todo_list.add_task("Clean house")
      todo_list.complete_task(0)
      expect(todo_list.tasks).to include({title: "Buy groceries", completed: true}, {title: "Clean house", completed: false})
    end
  end

  describe "#pending_taks" do
    it "return an array of pending taks" do
     todo_list.add_task("Buy groceries")
     todo_list.add_task("Clean house")
     todo_list.complete_task(1)
     expect(todo_list.tasks).to eq([{title: "Buy groceries", completed: false}, {title: "Clean house", completed: true}])
    end
  end
end