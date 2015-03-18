require 'rails_helper'

describe "return to main page process" do
  it "redirects to the main page" do
    Lesson.create(:name =>"Lesson 567", :content => "Howdy partner")
    visit lessons_path
    click_on 'Lesson 567'
    click_on 'Return to Lessons'
    expect(page).to have_content 'Lesson 567'
  end
end
