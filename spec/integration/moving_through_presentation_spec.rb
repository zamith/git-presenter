require "spec_helper"

describe "while giving presentation" do
  let(:presentation_dir){File.dirname(__FILE__) + "/../../presentation"}

  before do
    @helper = GitHelper.new(presentation_dir)
  end

  context "when moving to the next slide" do
    it "should move to the next commit" do
      @helper.start_presentation do |commits, presenter|
        presenter.execute("next")
        @helper.head_position.should eql commits[1].id
      end
    end

    it "should continue till the last commit" do
      @helper.start_presentation do |commits, presenter|
        presenter.execute("next")
        presenter.execute("next")
        @helper.head_position.should eql commits[2].id
      end
    end
  end

  context "when a change has been made during a slide" do

  end

  context "when the presentation reaches the end" do
    it "should stay on the last commit" do
      @helper.start_presentation do |commits, presenter|
        presenter.execute("next")
        presenter.execute("next")
        presenter.execute("next")
        presenter.execute("next")
        @helper.head_position.should eql commits[2].id
      end
    end
  end

  context "when going back through the presentation" do
    it "should o go back to a previous commit" do
      @helper.start_presentation do |commits, presenter|
        presenter.execute("next")
        presenter.execute("next")
        presenter.execute("back")
        @helper.head_position.should eql commits[1].id
      end
    end
  end

  context "when going back to the start of the presention" do
    it "should move to the first commit" do
      @helper.start_presentation do |commits, presenter|
        presenter.execute("next")
        presenter.execute("next")
        presenter.execute("start")
        @helper.head_position.should eql commits[0].id
      end
    end
  end

  context "when going to the end of the presentation" do
    it "should move the last commit" do
      @helper.start_presentation do |commits, presenter|
        presenter.execute("end")
        @helper.head_position.should eql commits.last.id
      end
    end
  end

  context "when going to a specific slide" do
    it "should checkout the specific commit" do
      @helper.start_presentation do |commits, presenter|
        presenter.execute("2")
        @helper.head_position.should eql commits[1].id
      end
    end
  end

  context "list presentation" do
    it "should print a list of commits" do
      @helper.start_presentation do |commits, presenter|
        commits[0] = "*#{commits[0]}"
        expected_output = commits.join("\n")
        presentation = presenter.execute("list")
        presentation.should eql expected_output
      end
    end
  end

  context "when asking for help" do
    it "should print a list of command and there usage" do
      @helper.start_presentation do |commits, presenter|
      help_text = <<-EOH
Git Presenter Reference

next/n: move to next slide
back/b: move back a slide
end/e:  move to end of presentation
start/s: move to start of presentation
list/l : list slides in presentation
help/h: display this message
EOH
        message = presenter.execute("help")
        message.should eql help_text
      end
    end
  end
end
