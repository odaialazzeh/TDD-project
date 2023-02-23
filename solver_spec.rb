RSpec.describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns 1 when given 0' do
      expect(solver.factorial(0)).to eq 1
    end

    it 'returns 1 when given 1' do
      expect(solver.factorial(1)).to eq 1
    end

    it 'returns 120 when given 5' do
      expect(solver.factorial(5)).to eq 120
    end

    it 'raises an exception when given a negative integer' do
      expect { solver.factorial(-1) }.to raise_error(ArgumentError, 'Input must be a non-negative integer')
    end
  end

  describe '#reverse' do
    it 'returns empty string when given an empty string' do
      expect(solver.reverse('')).to eq ''
    end

    it 'returns the reversed string when given a non-empty string' do
      expect(solver.reverse('hello')).to eq 'olleh'
    end
  end

  describe '#fizzbuzz' do
    it "returns 'fizz' when given a multiple of 3" do
      expect(solver.fizzbuzz(3)).to eq 'fizz'
      expect(solver.fizzbuzz(9)).to eq 'fizz'
    end

    it "returns 'buzz' when given a multiple of 5" do
      expect(solver.fizzbuzz(5)).to eq 'buzz'
      expect(solver.fizzbuzz(25)).to eq 'buzz'
    end

    it "returns 'fizzbuzz' when given a multiple of both 3 and 5" do
      expect(solver.fizzbuzz(15)).to eq 'fizzbuzz'
      expect(solver.fizzbuzz(30)).to eq 'fizzbuzz'
    end

    it 'returns the input number as a string when not divisible by 3 or 5' do
      expect(solver.fizzbuzz(7)).to eq '7'
      expect(solver.fizzbuzz(11)).to eq '11'
    end
  end
end
