class PigLatinizer
  attr_reader :string

  def initialize (string = nil)
    @string = string
  end

  def piglatinize (string)

    vowels = ["a", "e", "i", "o", "u"]

    if (vowels.include? "#{word[0]}".downcase)
      "#{word}way"
    else
      split_word = word.split /([aeiou].*)/
      "#{split_word[1]}#{split_word[0]}ay"
    end
  end



end
