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

    it 'adds multiples of an item to the order' do
      order.add(:cafe_latte, 4)
      expect(order.summary).to eq({cafe_latte: 4})
    end

    it 'removes an item from the order' do
      order.add(:cafe_latte)
      order.remove(:cafe_latte)
      expect(order.summary).to eq({})
    end

    it 'removes a single quantity of an item from the order' do
      4.times { order.add(:cafe_latte) }
      order.remove(:cafe_latte, 2)
      expect(order.summary).to eq({ cafe_latte: 2 })
    end
end
