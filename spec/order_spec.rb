describe Order do
    subject(:order) { described_class.new }

    it 'adds an item to the order' do
      order.add(:cafe_latte)
      expect(order.summary).to eq({cafe_latte: 1})
    end

    it 'adds more than 1 of an item to the order' do
      2.times { order.add(:cafe_latte) }
      expect(order.summary).to eq({cafe_latte: 2})
    end
end
