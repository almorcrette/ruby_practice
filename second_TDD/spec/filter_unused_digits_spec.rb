require 'filter_unused_digits'

describe 'Filter Unused Digits' do
  
  it 'with no argument' do
    expect(unused_digits()).to eq "0123456789"
  end
  
  it 'with one argument, integer with all digits' do
    expect(unused_digits(1234567890)).to eq ""
  end
  
  it 'with single argument, integer 752' do
    expect(unused_digits(752)).to eq "0134689"
  end
  
  it 'Codewars test: multiple arguments [12, 34, 56, 78]' do
    expect(unused_digits(12, 34, 56, 78)).to eq "09"
  end
  
  it 'Codewars test: multiple arguments [2015, 8, 26]' do
    expect(unused_digits(2015, 8, 26)).to eq "3479"
  end
end