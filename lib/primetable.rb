require "primetable/formatter"
require "primetable/generator"
require "primetable/version"

module Primetable
  def self.print(n)
    primes = Primetable::Generator.new.generate(n)
    table = Array.new(n+1) { |i| Array.new(n+1) }
    primes.each_with_index do |p, i|
      table[0][i+1] = p
      table[i+1][0] = p

      primes.each_with_index do |q, j|
        table[i+1][j+1] = p*q
      end
    end

    Primetable::Formatter.new.format(table)
  end
end
