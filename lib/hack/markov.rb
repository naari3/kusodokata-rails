class Markov
  private
  attr_accessor :firsts

  public
  def initialize
    @data = {}
    @firsts = []
  end

  def reset
    @data = {}
    @firsts = []
  end

  def add_with_first(*items)
    raise ArgumentError, 'at least one argument required' if items.empty?
    firsts.push(items[0])
    add(*items)
  end

  def generate_from_first(length = 1.0/0)
    item = firsts.random
    result = [item]
    items = data[item]
    while !items.empty? and result.length < length
      item = items.random
      result.push item
      items = data[item]
    end
    result
  end
end
