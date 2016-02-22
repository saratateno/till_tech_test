require 'calculator'
require 'order'
# As a member of staff
# So that I can charge the customer the correct amount
# I would like to know the cost of each item on the order

describe 'calculating an order' do
  let(:calculator) { Calculator.new}
  let(:order) { Order.new }

  it 'returns the cost of each item on the order' do
    expect(calculator.itemise(:cafe_latte, 1)).to eq 4.75
  end

  it 'returns a subtotal for each item on the order' do
    expect(calculator.itemise(:cafe_latte, 3)).to eq 14.25
  end

  # As a member of staff
  # So that I can charge the customer the correct amount
  # I would like to calculate the total cost of the order

  it 'returns a total cost for an order' do
    order.add(:cafe_latte, 2)
    order.add(:blueberry_muffin, 1)
    order.add(:choc_mudcake, 1)
    expect(calculator.total(order.summary)).to eq 19.95
  end

end
