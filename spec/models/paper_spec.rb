require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should be invalid when the user enters an empty title" do
    paper = Paper.new({"title" => "", "venue" => "test_venue", "year" => "2022"})
    expect(paper).to_not be_valid
  end

  it "should be invalid when the user enters an empty venue" do
    paper = Paper.new({"title" => "test_title", "venue" => "", "year" => "2022"})
    expect(paper).to_not be_valid
  end

  it "should be invalid when the user enters an empty year" do
    paper = Paper.new({"title" => "", "venue" => "test_venue", "year" => ""})
    expect(paper).to_not be_valid
  end

  it "should be invalid when the user enters an non integer year" do
    paper = Paper.new({"title" => "", "venue" => "test_venue", "year" => "no_integer"})
    expect(paper).to_not be_valid
  end
end
