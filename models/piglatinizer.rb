class PigLatinizer
  attr_reader :string

  def initialize (string = nil)
    @string = string
  end

  def piglatinize (string)

    words = []
  
    string.each do |temp|
      

    vowels = ["a", "e", "i", "o", "u"]

    if (vowels.include? "#{string[0]}".downcase)
      "#{string}way"
    else
      split_word = string.split /([aeiou].*)/
      "#{split_word[1]}#{split_word[0]}ay"
    end
  end



end
