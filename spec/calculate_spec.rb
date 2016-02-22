require 'calculator'
describe Calculator do
  subject(:calculator) { described_class.new }

  it 'returns the cost of each item on the order' do
    expect(calculator.itemise(:cafe_latte, 1)).to eq 4.75
  end

  it 'returns a subtotal for each item on the order' do
    expect(calculator.itemise(:cafe_latte, 3)).to eq 14.25
  end
end
