module BookKeeping
  VERSION = 4
end

module Complement
  MATRIX = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  module_function

  def of_dna(strand)
    comps = strand.chars.map { |nucleotide| MATRIX[nucleotide] }.join

    comps.length == strand.length ? comps : ''
  end
end
