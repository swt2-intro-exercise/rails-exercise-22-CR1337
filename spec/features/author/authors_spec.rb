require 'rails_helper'

describe "Index author page", type: :feature do
  it "should contain an HTML table with the headings Name and Homepage" do
    visit authors_path
    expect(page).to have_text("Name")
    expect(page).to have_text("Homepage")
  end

  it "should contain a link to add new authors" do
    visit authors_path
    expect(page).to have_link("New Author", href: new_author_path)
  end
end
