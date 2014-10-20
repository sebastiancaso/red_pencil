require_relative 'dealer'


describe Dealer do 

	before :each do 
		@dealer = Dealer.new
		@dealer.add_to_inventory(10,'shirt')
	end 
	

	describe 'attributes' do 
		it 'should instantiate a dealer with an empty array' do 
			expect(@dealer.items).to be_a(Array)
		end 
	end 

	describe '#add_to_inventory' do 
		it 'should add an item to the items array' do 
			expect(@dealer.items.length).to eq(1)
		end  
	end 
	
	describe '#display_items' do 
		it 'should display contents of items array' do 			
			expect(@dealer.display_items).to eq("Item number 1: $10 shirt")
		end 
	end 

	describe '#change_price_date' do 
		it 'should change the date of current_price' do
			@dealer.change_price_date(1) 
			expect(@dealer.items[0].current_price_date).to_not eq(@dealer.items[0].original_price_date)
		end 
	end

	describe '#change_price' do 
		it 'should change the price of an item' do 
			expect{@dealer.change_price(1,8)}.to change{@dealer.items[0].current_price}.from(10).to(8)
		end 
	end  
end 