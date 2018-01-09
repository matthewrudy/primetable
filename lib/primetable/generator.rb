module Primetable
  class Generator
    def generate(n)
      # naive O(n^2) prime generator  
      primes = []
      i = 2
      while primes.length < n do
        if primes.none? { |p| i%p == 0 }
          primes << i
        end
        i += 1
      end 
      primes
    end 
  end
end