require_relative 'item'

class Dealer #maybe change name to seller 
	attr_accessor :items

	def initialize 
		@items = []
	end 

	#adds a new item to customer inventory 
	def add_to_inventory(price, description)
		self.items << Item.new(price, description)
	end 

	#displays dealers inventory
	def display_items
		self.items.each_with_index do |item, index|
			return "Item number #{index + 1}: $#{item.current_price} #{item.description}"
		end 
	end 

	def change_price_date(item_number)
		self.items[item_number -1].current_price_date = DateTime.now 
	end 

	def change_price(item_number, new_price)
		change_price_date(item_number)
		self.items[item_number -1].current_price = new_price
	end 	 
end 



