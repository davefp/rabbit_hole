require "yaml"

module TaskStack

  class Base

    def initialize(yml_path = "#{Dir.home}/.task_stack.yml")
      @yml_path = yml_path
    end

    def push(task)
      with_stack do |stack|
        stack.push(task)
      end
    end

    def pop
      with_stack do |stack|
        stack.pop
      end
    end

    def top
      with_stack do |stack|
        stack.last
      end
    end

    private

    def with_stack

      if File.file?(@yml_path)
        stack = YAML.load_file(@yml_path)
      else
        stack ||= []
      end

      result = yield stack

      File.open(@yml_path, 'w') { |f| YAML.dump(stack, f) }

      result
    end
  end
end