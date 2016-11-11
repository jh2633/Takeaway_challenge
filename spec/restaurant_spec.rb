require 'restaurant'

describe Restaurant do
  let(:restaurant){described_class.new}
  let(:menu){double :menu}

it 'should return a list of the menu items' do
  menu = Menu.new
  expect(restaurant.list(menu)).to eq (menu.items)
end

it 'can hold a list of dishes' do
  expect(restaurant.select("boquerones")).to eq ["boquerones"]
end

it 'returns the number of items you ordered' do
  restaurant.select("boquerones")
  restaurant.select("shishito peppers")
  restaurant.select("tortilla espanola")
  expect(restaurant.total_dishes).to eq 3
end

it 'returns quantity of dishes you ordered' do
  restaurant.select("shishito peppers")
  restaurant.select("shishito peppers")
end

it 'returns your order total' do
  restaurant.select("shishito peppers")
  restaurant.select("boquerones")
  expect(restaurant.total).to eq 9
end

it 'will not let you order something not on the menu' do
  expect{restaurant.select("taco")}.to raise_error "That item isn't on the menu"
end

it 'won\'t let you place an empty order' do
  expect{restaurant.order}.to raise_error "You submitted an empty order"
end


end
