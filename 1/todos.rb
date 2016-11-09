class TodoList
  @todos = []
  def initialize
  end

  def show_todos
    @@todos.each_with_index do |f, i|
      puts "№#{i} #{f.body} done: #{f.done}"
    end
  end

  def create_todo(body)
    @@todos << Todo.new(body)
  end

  def del_todo(num)
    @@todos.delete_at num
  end

  def sh_status(num, status)
    @@todos[num].done = status
  end
end
class Todo
  attr_accessor :body, :done

  def initialize(body)
    @body = body
    @done = false
  end
end

list = TodoList.new
loop do
  puts 'Enter \'1\' if you want to add new \'todo\',
\'e\' to exit and something else to check one of \'todos\' as done or cancel it'
  a = gets.chomp
  break if a == 'e'
  if a.to_i == 1
    puts 'Enter your todo'
    todo_body = gets.chomp
    list.create_todo todo_body
  else
    list.show_todos
    puts 'Enter  \'todo\' number'
    a = gets.chomp.to_i
    puts 'Enter  \'d\' for delete, some else for change status'
    x = gets.chomp
    if x == 'd'
      list.del_todo a
    else
      puts 'Enter \'1\' to true some else to false'
      if gets.chomp.to_i == 1
        list.sh_status a, true
      else
        list.sh_status a, false
      end

    end
  end
end
