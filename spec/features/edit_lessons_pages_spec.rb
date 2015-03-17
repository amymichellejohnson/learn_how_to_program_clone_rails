require 'rails_helper'
describe "the edit a lesson process" do
  it "edits a new lesson" do
    lesson = Lesson.create(:name => "Lesson 34", :content => "Stuff")
    visit lessons_path
    click_on 'Edit'
    fill_in 'Content', :with => 'Some newer stuff'
    click_on 'Update Lesson'
    expect(page).to have_content 'edited'
  end

  it "gives an error when nothing is entered" do
    lesson = Lesson.create(:name =>"Lesson 34", :content =>"More stuff")
    visit lessons_path
    click_on 'Edit'
    fill_in 'Content', :with => ' '
    
    click_on 'Update Lesson'
    expect(page).to have_content 'errors'
  end
end
