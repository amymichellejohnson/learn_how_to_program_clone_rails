require 'rails_helper'

describe "the go to previous lesson process" do
  it "shows the previous lesson" do
    lesson1 = Lesson.create(:name =>"Lesson 567", :content => "Howdy partner", :id =>1)
    lesson2 = Lesson.create(:name =>"Lesson ABC", :content => "Hi mate", :id =>3)
    visit lesson_path(lesson2)
    click_on 'Previous Lesson'
    expect(page).to have_content 'Lesson 567'
  end
end
