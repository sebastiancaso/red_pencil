require 'date'

class Item #maybe change name to product?
	attr_accessor :original_price, :current_price, :description, :original_price_date, :current_price_date
 
	def initialize(original_price, description)
		@original_price = original_price
		@current_price = original_price 
		@description = description 
		@original_price_date = DateTime.now
		@current_price_date = @original_price_date
	end 

	#update date for most recent price change
	def update_current_price_date
		self.current_price_date = DateTime.now 
	end

	#set the largest discount amount possible for an item
	def max_discount_amount
		amount = self.original_price - self.original_price * 0.3
		return amount
	end 

	#set the minimum discount amount for an item
	def min_discount_amount
		amount = self.original_price - self.original_price * 0.05
		return amount
	end

	#discount must be between 5-30% to be valid
	def valid_discount_amount?
		if current_price.between?(max_discount_amount, min_discount_amount) 
			return true			
		else
			return false		
		end 
	end 
	
	def valid_date?
		self.current_price_date > self.original_price_date + 30
	end 

	#checks that promotion length is within range
	def valid_promotion_length?
		end_date = self.current_price_date + 30
		if end_date > DateTime.now
			return true
		else
			return false
			self.current_price = self.original_price
		end  
	end 

	#checks if promotion is valid
	def red_pencil_promotion?
		 if valid_date? && valid_discount_amount? && valid_promotion_length?
		 	return true
		 else
		 	return false		 	
		 end 
	end

end 

 
