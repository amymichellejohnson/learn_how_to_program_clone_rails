class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :content, :presence => true

  def next
    lessons_hash ={}
    Lesson.all.each_with_index do |lesson, index|
      lessons_hash[lesson] = index
    end

    next_value = lessons_hash[self] + 1
    if lessons_hash.key(next_value) == nil
      self
    else
      lessons_hash.key(next_value)
    end

  end

  def previous
    lessons_hash ={}
    Lesson.all.each_with_index do |lesson, index|
      lessons_hash[lesson] = index
    end

    prev_value = lessons_hash[self] - 1
    if lessons_hash.key(prev_value) == nil
      self
    else
      lessons_hash.key(prev_value)
    end


  end

end
