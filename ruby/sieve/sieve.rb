# require 'prime'

module BookKeeping
  VERSION = 1
end

class Sieve
  attr_reader :max, :bools

  def initialize(max)
    @max = max
    @bools = Array.new(max + 1) { true }.tap { |a| a[0] = a[1] = nil }
  end

  # def primes
  #   Prime::EratosthenesGenerator.new.take_while { |i| i <= max }
  # end

  def primes
    mark_multiples

    extract_unmarked_primes
  end

  private

  def mark_multiples
    bools.each_index do |idx|
      if bools[idx]
        (idx*idx).step(max, idx) { |x| bools[x] = false }
      end
    end
  end

  def extract_unmarked_primes
    bools.each_with_index.map {|b, idx| idx if b }.compact
  end
end
