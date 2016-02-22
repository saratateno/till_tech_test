class Order

  attr_reader :summary

  def initialize
    @summary = Hash.new
  end

  def add(item, quantity = 1)
    @summary[item] = quantity
  end

end