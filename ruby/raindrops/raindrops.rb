module BookKeeping
  VERSION = 3
end

class Raindrops
  FACTORS = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(num)
    drops = FACTORS.keys.select { |fac| (num % fac).zero? }.map(&FACTORS)

    drops.empty? ? num.to_s : drops.join
  end
end
