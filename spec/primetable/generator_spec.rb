RSpec.describe Primetable::Generator do
  it "generates the first n prime numbers" do
    primes = subject.generate(10)
    expect(primes).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
  end
end