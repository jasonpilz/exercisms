module BookKeeping
  VERSION = 6
end

class Pangram
  ALPHABET = [*'a'..'z']

  def self.pangram?(phrase)
    ALPHABET.all? { |alpha| phrase.chars.find { |char| /#{alpha}/i.match?(char) } }
  end
end
