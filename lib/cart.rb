class Cart

  def initialize
    @cart = []
  end

  def add(item)
    @cart.push(item)

  end

  def remove(item)
    @cart.delete_at(a.index(item) || a.length)
  end

  def display
    @cart
  end

end
