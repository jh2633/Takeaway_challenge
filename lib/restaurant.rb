require_relative 'menu'
require_relative 'text'
class Restaurant

attr_reader :order_cart, :total_dishes, :menu, :total

  def initialize(menu = Menu.new)
    @order_cart = []
    @menu = menu
    @total = 0
  end

  def list(things)
    things.items
  end

  def select(dish)
    fail "That item isn't on the menu" if menu.price(dish).nil?
    @total += menu.price(dish)
    @order_cart << dish
  end

  def total_dishes
    order_cart.length
  end

  def order
    fail "You submitted an empty order" if @order_cart == []
    text = Text.new
    text.send
  end

end
