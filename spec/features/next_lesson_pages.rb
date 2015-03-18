require 'rails_helper'

describe "the go to next lesson process" do
  it "shows the next lesson" do
    lesson1 = Lesson.create(:name =>"Lesson 567", :content => "Howdy partner", :id =>1)
    lesson2 = Lesson.create(:name =>"Lesson ABC", :content => "Hi mate", :id =>3)
    visit lesson_path(lesson1)
    click_on 'Next Lesson'
    expect(page).to have_content 'Lesson ABC'
  end
end
