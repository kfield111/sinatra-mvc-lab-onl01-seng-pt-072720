class PigLatinizer
  attr_reader :string

  def initialize (string = nil)
    @string = string
  end

  def piglatinize_word (word)

    vowels = ["a", "e", "i", "o", "u"]

    if (vowels.include? "#{word[0]}.downcase")
      "#{word}way"
    else
      word.split(/([aeiou].*)/)
    end



end
