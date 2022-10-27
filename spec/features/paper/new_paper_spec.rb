require 'rails_helper'

describe "New paper page", type: :feature do
  it "should have text inputs for title, venue, and year" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit new_paper_path
    expect(page).to have_field('paper[title]')
    expect(page).to have_field('paper[venue]')
    expect(page).to have_field('paper[year]')
  end
end
