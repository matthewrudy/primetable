module Primetable
  class Tabulator
    def tabulate(primes)
      n = primes.length
      table = Array.new(n+1) { |i| Array.new(n+1) }
      primes.each_with_index do |p, i|
        table[0][i+1] = p
        table[i+1][0] = p

        primes.each_with_index do |q, j|
          table[i+1][j+1] = p*q
        end
      end
      table
    end
  end
end