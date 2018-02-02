module BookKeeping
  VERSION = 4
end

class Complement
  COMP_MATRIX = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(strand)
    comps = strand.chars.map { |nucleotide| COMP_MATRIX[nucleotide] }.join

    comps.length == strand.length ? comps : ''
  end
end
