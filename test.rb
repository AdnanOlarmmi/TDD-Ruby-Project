require './solver'
solver = Solver.new

describe 'factorial' do
  it 'Factorial of a number' do
    expect(solver.factorial(5)).to eq(120)
  end
  it 'Factorial of zero' do
    expect(solver.factorial(0)).to eq(1)
  end

  it 'Factorial of a negative number' do
    expect { solver.factorial(-7) }.to raise_error(ArgumentError)
  end
end

describe 'reverse' do
  it 'Reverse of a string' do
    expect(solver.reverse('hello')).to eq('olleh')
  end
end

describe 'FizzBuzz' do
  it 'FizzBuzz of a number' do
    expect(solver.fizzbuzz(15)).to eq('FizzBuzz')
  end

  it 'Fizz of a number' do
    expect(solver.fizzbuzz(21)).to eq('Fizz')
  end

  it 'Buzz of a number' do
    expect(solver.fizzbuzz(50)).to eq('Buzz')
  end
  it 'Not Fizz neither buzz' do
    expect(solver.fizzbuzz(7)).to eq(7)
  end
end
