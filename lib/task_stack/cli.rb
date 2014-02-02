#!/usr/bin/env ruby
require "thor"

module TaskStack
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

    desc "list", "List all tasks in the stack"
    def list
      puts "TODO"
    end
  end
end