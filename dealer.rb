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
		self.items[item_number -1].current_price_date = DateTime.now + 31
	end 

	def change_price(item_number, new_price)
		change_price_date(item_number)
		self.items[item_number -1].current_price = new_price
	end 	 
end 


#dealer controls price changes 
#method for dates will be changed in dealer class
#should dates be tracked by Dealer class or Item class?
# dealer1 = Dealer.new
# dealer1.items
# dealer1.add_to_inventory(10, "boots")
# dealer1.add_to_inventory(15, "shirt")

# dealer1.display_items
# p dealer1.items[1]
# dealer1.change_price(2, 11)
# p "#------#"
# p dealer1.items[1].original_price_date
# p"#-------#"
# p dealer1.items[1].current_price_date

# p "#-------------------------------------#"
# p dealer1.items[1].red_pencil_promotion?
# p "!!!!!!!!!!!!!!!!!!!!!!!!!!"
# p dealer1.change_price(2,15)
# p dealer1.items[1].red_pencil_promotion?
