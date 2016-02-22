# As a member of staff
# So that I can keep track of an order
# I would like to enter each item of an order

require 'order'

describe 'creating an order' do
    let(:order) { Order.new }

    it 'adds an item to the order' do
      order.add(:cafe_latte)
      expect(order.summary).to eq({cafe_latte: 1})
    end
end
