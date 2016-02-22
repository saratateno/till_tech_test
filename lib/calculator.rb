require 'json'


class Calculator
  attr_reader :price_list

  def initialize
    file = File.read('hipstercoffee.json')
    hipster_coffee = JSON.parse(file)
    prices = hipster_coffee[0]['prices'][0]
    @price_list = Hash[prices.map do |k, v|
      [k.downcase.gsub(/\s+/, "_").to_sym, v]
    end]
  end

  def itemise(item, quantity)
    @price_list[item] * quantity
  end

  def total(order)
    total = 0
    order.each_pair do | k, v |
      total += itemise(k,v)
    end
    return total.round(2)
  end

end
