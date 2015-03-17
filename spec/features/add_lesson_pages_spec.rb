require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    visit lessons_path
    click_on "Create new Lesson"
    fill_in 'Name', :with => "Lesson forty-five"
    fill_in 'Content', :with => "Bestest lesson ever"
    click_on 'Create Lesson'
    expect(page).to have_content 'forty-five'
  end

  it "gives an error when no name is entered" do
    visit new_lesson_path
    fill_in 'Content', :with => "Bestest lesson ever"
    click_on 'Create Lesson'
    expect(page).to have_content 'errors'
  end

  it "gives an error when no content is entered" do
    visit new_lesson_path
    fill_in 'Name', :with => "Lesson example"
    click_on 'Create Lesson'
    expect(page).to have_content 'errors'
  end

  it "gives an error when nothing is entered" do
    visit new_lesson_path
    click_on 'Create Lesson'
    expect(page).to have_content 'errors'
  end

end
# use this to launch launchy:
# save_and_open_page
