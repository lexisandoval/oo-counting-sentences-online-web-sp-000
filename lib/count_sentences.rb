require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")

  end

  def exclamation?
    self.end_with?("!")

  end

  def count_sentences
    new = []
    count = 0

    new << self.split
    new.each do |letter|
      if letter.end_with("?") 
        count += 1
      end
    end
    count
  end
end
