require "primetable/formatter"
require "primetable/generator"
require "primetable/tabulator"
require "primetable/version"

module Primetable
  def self.print(n)
    primes = Primetable::Generator.new.generate(n)
    table = Primetable::Tabulator.new.tabulate(primes)
    Primetable::Formatter.new.format(table)
  end
end
