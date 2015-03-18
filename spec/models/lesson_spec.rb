require 'rails_helper'

describe Lesson do
  it {should validate_presence_of :content}
  it {should validate_presence_of :name}

  context '#next' do
    it "returns the next lesson according to id" do
      lesson1 = Lesson.create(:name =>"Lesson 1", :content => "stuff1", :id => 1)
      lesson2 = Lesson.create(:name =>"Lesson 2", :content => "stuff2", :id=> 2)
      expect(lesson1.next).to eq(lesson2)
    end
  end
  context '#previous' do
    it "returns the previous lesson according to id" do
      lesson1 = Lesson.create(:name =>"Lesson 1", :content => "stuff1", :id => 1)
      lesson2 = Lesson.create(:name =>"Lesson 2", :content => "stuff2", :id=> 2)
      expect(lesson2.previous).to eq(lesson1)
    end
  end


end
