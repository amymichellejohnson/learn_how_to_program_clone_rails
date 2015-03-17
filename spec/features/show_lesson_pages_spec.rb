require 'rails_helper'

describe "the show a lesson process" do
  it "shows a new lesson" do
    Lesson.create(:name =>"Lesson 567", :content => "Howdy partner")
    visit lessons_path
    click_on 'Lesson 567'
    expect(page).to have_content 'Howdy partner'
  end
end
