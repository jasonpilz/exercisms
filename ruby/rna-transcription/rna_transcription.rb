module BookKeeping
  VERSION = 4
end

class Complement
  COMPLEMENTS = Hash[*%w(G C C G T A A U)].freeze

  def self.of_dna(strand)
    transcribe.(strand)
  rescue KeyError
    ''
  end

  private_class_method

  def self.transcribe
    ->(strand) { strand.chars.map(&COMPLEMENTS.method(:fetch)).join }
  end
end
