require 'rails_helper'

RSpec.describe Author, type: :model do
    it "should have first name, last name and homepage" do
      author = Author.new({"first_name" => "Alan", "last_name" => "Turing", "homepage" => "http://wikipedia.org/Alan_Turing"})
      expect(author.first_name).to eq("Alan")
      expect(author.last_name).to eq("Turing")
      expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
    end

    it "should have a method returning its full name" do
      author = Author.new({"first_name" => "Alan", "last_name" => "Turing", "homepage" => "http://wikipedia.org/Alan_Turing"})
      expect(author.name).to eq("Alan Turing")
    end

    it "should be invalid when the user enters an empty last name" do
      author = Author.new({"first_name" => "Alan", "last_name" => "", "homepage" => "http://wikipedia.org/Alan_Turing"})
      expect(author).to_not be_valid
    end
end
