require 'pry'

class PigLatinizer
  attr_reader :string

  def initialize (string = nil)
    @string = string
  end

  def piglatinize_word (word)

    vowels = ["a", "e", "i", "o", "u"]

    if (vowels.include? "#{word[0]}".downcase)
      "#{temp}way"
    else
      split_word = word.split /([aeiou].*)/
      piglatinized_string << "#{split_word[1]}#{split_word[0]}ay"
    end
  end



end
