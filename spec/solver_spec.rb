require_relative '../src/solver'
require 'rspec'

RSpec.describe Solver do
  describe '#factorial' do
    it 'returns 1 when given 0' do
      solver = Solver.new
      expect(solver.factorial(0)).to eql(1)
    end
    it 'a negative integer is given it should raise an exception' do
      solver = Solver.new
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end
  describe '#reverse' do
    it 'returns a reversed string' do
      solver = Solver.new
      expect(solver.reverse('hello')).to eql('olleh')
    end
  end

  describe 'fizzbuzz' do
    it 'returns fizz if N is divisible by 3' do
      solver = Solver.new
      expect(solver.fizzbuzz(9)).to eql('fizz')
    end
    it 'returns buzz if N is divisible by 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(20)).to eql('buzz')
    end
    it 'returns fizzbuzz if N is divisible by 3 and 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(15)).to eql('fizzbuzz')
    end
    it 'any other number returns the number' do
      solver = Solver.new
      expect(solver.fizzbuzz(8)).to eql('8')
    end
  end
end
