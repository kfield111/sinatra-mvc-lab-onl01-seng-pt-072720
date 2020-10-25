class PigLatinizer
  attr_reader :string

  def initialize (string = nil)
    @string = string.downcase
  end


end
