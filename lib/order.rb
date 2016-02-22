class Order

  attr_reader :summary

  def initialize
    @summary = Hash.new
  end

  def add(item, quantity = 1)
    @summary[item] ? @summary[item] += quantity : @summary[item] = quantity
  end

  def remove(item, quantity = 1)
    @summary[item] == quantity ? @summary.delete(item) :
                                 @summary[item] -= quantity
  end

end
