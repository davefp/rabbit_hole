require 'spec_helper'
describe RabbitHole do

  before do

    yml_path = "#{Dir.home}/.rabbit_hole_test.yml"

    File.open(yml_path, "w") {|f| YAML.dump([], f)}
    @task_stack = RabbitHole::Base.new(yml_path)
  end

  context "add task" do

    before do
      @task = "My new task"
    end

    it "should add the task to the top of the stack" do
      @task_stack.push(@task)
      @task_stack.top.should eq @task
    end

    it "should increase the size of the stack by 1" do
      old_size = @task_stack.size
      @task_stack.push(@task)

      @task_stack.size.should eq (old_size + 1)
    end

  end

  context "remove task" do

    before do
      @task = "My old task"
      @task_stack.push(@task)
    end

    it "should return the last task" do
      other_task = @task_stack.pop

      other_task.should eq @task
    end

    it "should remove the top task from the stack" do
      @task_stack.pop

      @task_stack.top.should_not eq @task
    end
  end
end