class Marketplace
	
	attr_accessor :products

	def initialize
		@view_of_goods = []
	end 

	def maximum_length
		#30 days is maximum
	end 

	def price_history
		#price must be stabile 30 days prior to promotion
	end 

	def price_increase?
		#if price increased during promotion it is taken off promotion list
	end 

	def maximum_discount?
		#if price drops by more tha  30% promotion becomes invalid
	end 
end 



