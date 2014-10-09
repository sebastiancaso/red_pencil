require_relative 'dealer'


describe Dealer do 
	let(:dealer1){Dealer.new}

	describe 'attributes' do 
		it 'should instantiate a dealer with an empty array' do 
			expect(dealer1.items).to be_a(Array)
		end 
	end 

	describe '#add_to_inventory' do 
		it 'should add an item to the items array' do 
			dealer1.add_to_inventory(10,'shirt')			
			expect(dealer1.items.length).to eq(1)
		end  
	end 
	#display items?
	describe '#display_items' do 
		it 'should display contents of items array' do 
			dealer1.add_to_inventory(10,'shirt')
			# p dealer1.display_items
			expect(dealer1.display_items).to eq("Item number 1: $10 shirt")
		end 
	end 

	describe '#change_price_date' do 
		it 'should change the date of current_price' do
			dealer1.add_to_inventory(10,'shirt')
			dealer1.change_price_date(1) 
			expect(dealer1.items[0].current_price_date).to_not eq(dealer1.items[0].original_price_date)
		end 
	end

	describe '#change_price' do 
		it 'should change the price of an item' do 
			dealer1.add_to_inventory(10,'shirt')
			expect{dealer1.change_price(1,8)}.to change{dealer1.items[0].current_price}.from(10).to(8)
		end 
	end  
end 