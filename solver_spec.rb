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

end
