module Primetable
  class Formatter
    def format(values)
      # all cells will have the width of the maximum value
      width = values.map { |row| row.map { |v| v.to_s.length }.max }.max
      
      str = ""
      values.each do |row|
        row.each do |v|
          str << v.to_s.rjust(width) << " | "
        end
        # hack to remove the final space, and add the newline
        str[-1] = "\n"
      end
      str
    end
  end
end