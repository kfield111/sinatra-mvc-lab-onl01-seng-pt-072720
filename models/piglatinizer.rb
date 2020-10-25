class PigLatinizer
  attr_reader :string

  def initialize (string = nil)
    @string = string
  end

  def piglatinize (string)

    words = []

    string.each do |temp|
      words << temp.split(' ')
    end

    words.each do |temp|
      vowels = ["a", "e", "i", "o", "u"]

      if (vowels.include? "#{words[0]}".downcase)
        "#{words}way"
      else
        split_word = words.split /([aeiou].*)/
        "#{split_word[1]}#{split_word[0]}ay"
      end
    end
  end



end
