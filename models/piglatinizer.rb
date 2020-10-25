# class PigLatinizer
#   attr_reader :string
#
#   def initialize (string = nil)
#     @string = string
#   end
#
#
#   def piglatinize(string)
#     words = string.split(' ')
#     array = []
#     words.each do |temp|
#       array << self.piglatinize_word(temp)
#     end
#     array.join(' ')
#   end
#
#
#
#   def piglatinize_word(word)
#
#     vowels = ["a", "e", "i", "o", "u"]
#
#     if (vowels.include? "#{word[0]}".downcase)
#       "#{word}way"
#     else
#       split_word = word.split /([aeiou].*)/
#       "#{split_word[1]}#{split_word[0]}ay"
#     end
#   end
#
#
#
# end

class PigLatinizer

  def piglatinize(word)
    return word if %w[and an in].include?(word) #one syllable exceptions
    letters = word.split("")
    letters.keep_if {|letter| letter != "."}
    if letters.size > 1
      until vowel?(letters[0])
        letters << letters.shift
      end
      letters  << "ay"
    end
    letters.join
  end

  def to_pig_latin(text)
    words = text.split(" ")
    words.map! {|word| piglatinize(word)}
    words.join(" ")
  end

  def vowel?(letter)
    letter.downcase
    letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u"
  end

end 
