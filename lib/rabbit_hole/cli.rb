require "thor"

module RabbitHole
  class CLI < Thor
    desc "add TASK", "Adds TASK to the top of the stack"
    def add(task)
      stack = Base.new
      stack.push task
      puts "Added task '#{task}' to the stack!"
    end

    desc "current", "show the current task"
    def current
      stack = Base.new
      puts "Currently working on: '#{stack.top}'"
    end

    desc "complete", "Complete the current task"
    def complete
      stack = Base.new
      puts "Completed: '#{stack.pop}'"
      puts "Next task: '#{stack.top}'"
    end

    desc "show", "Show all tasks in the stack"
    def show
      stack = Base.new
      tasks = stack.tasks
      puts "#{tasks.size} levels deep"
      puts "Current task: #{tasks.last}"
      tasks[0...-1].each do |task|
        puts task
      end
    end
  end
end