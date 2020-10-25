class PigLatinizer
  attr_reader :string

  def initialize (string = nil)
    @string = string
  end

  def piglatinize (string)


    string.each do |temp|
      vowels = ["a", "e", "i", "o", "u"]

      if (vowels.include? "#{temp[0]}".downcase)
        "#{temp}way"
      else
        split_word = temp.split /([aeiou].*)/
        "#{split_word[1]}#{split_word[0]}ay"
      end
    end
  end



end
