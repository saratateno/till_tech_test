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

    # As a member of staff
    # So that I can keep track of an order
    # I would like to track the quantity of each item on the order
    it 'adds more than 1 of an item to the order' do
      2.times { order.add(:cafe_latte) }
      expect(order.summary).to eq({cafe_latte: 2})
    end

    # As a member of staff
    # So that I can be efficient in my work
    # I would like to enter multiple quantities of an item
    it 'adds multiples of an item to the order' do
      order.add(:cafe_latte, 4)
      expect(order.summary).to eq({cafe_latte: 4})
    end
end
