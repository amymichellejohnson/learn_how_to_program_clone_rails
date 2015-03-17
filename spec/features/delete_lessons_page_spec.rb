require 'rails_helper'

describe "the delete a lesson process" do
  it "deletes a new lesson" do
    Lesson.create(:name => "Lesson 34", :content => "Stuff")
    visit lessons_path
    click_on 'Delete'
    expect(page).to have_content 'deleted'
  end
end
