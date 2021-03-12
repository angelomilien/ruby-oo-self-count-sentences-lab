require 'pry'

class String

  def sentence?
    !!self.end_with?(".")
  end

  def question?
    !!self.end_with?("?")
  end

  def exclamation?
    !!self.end_with?("!")
  end

  def count_sentences
    array = self.split(/[.!?]/)
    new_value = array.reject { |e| e.to_s.empty? }
    new_value.length
  end
end