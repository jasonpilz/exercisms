module BookKeeping
  VERSION = 4
end

module Gigasecond
  SECONDS = 1_000_000_000

  module_function

  def from(start_time)
    start_time + SECONDS
  end
end
