require 'calculator'
describe Calculator do
  subject(:calculator) { described_class.new }
  let(:order) { { cafe_latte: 2, blueberry_muffin: 1, choc_mudcake: 1 } }

  it 'returns the cost of each item on the order' do
    expect(calculator.itemise(:cafe_latte, 1)).to eq 4.75
  end

  it 'returns a subtotal for each item on the order' do
    expect(calculator.itemise(:cafe_latte, 3)).to eq 14.25
  end

  it 'returns a total cost for an order' do
    expect(calculator.total(order)).to eq 19.95
  end
end
