RSpec.describe Primetable::Formatter do
    it "outputs a formatted table of values" do
      table = subject.format([
        [nil, 23, 29],
        [23, 529, 667],
        [29, 667, 841],
      ])

      expect(table).to eq <<-TABLE
    |  23 |  29 |
 23 | 529 | 667 |
 29 | 667 | 841 |
      TABLE
    end
  end