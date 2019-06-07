# frozen_string_literal: true

# Grain
class Grains
  def self.square(index)
    raise ArgumentError if (index <= 0) || (index > 64)

    2**(index - 1)
  end

  def self.total
    (1..64).sum { |i| square(i) }
  end
end
