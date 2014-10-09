require_relative 'item'
require_relative 'dealer'

describe Item do 
	let (:dealer1){Dealer.new}
	let (:toy) {Item.new(12, 'action figure')}
	
	describe 'attributes' do 
		it'should have an original price attribute' do
			expect(toy.original_price).to eq(12)
		end

		it'should have a current_price attribute' do 
			expect(toy.current_price).to eq(12)
		end
	

		it 'should have a description' do
			expect(toy.description).to eq('action figure')
		end 

		#not sure how to test DateTime 
		it 'should have a time the price was set' do
			expect(toy.original_price_date).to be_an_instance_of(DateTime) 
		end 

		it 'should have a time the price was changed' do
			expect(toy.original_price_date).to be_an_instance_of(DateTime) 
		end 
		
	end 

	describe '#update_current_price_date' do 
		it 'should change the current_price_date attribute when price is changed' do
			dealer1.items << toy
			dealer1.items[0].update_current_price_date
			expect(toy.current_price_date).to_not eq(toy.original_price_date)
		end 
	end 

	describe '#max_discount_amount' do 
		it 'should set the lowest a price can be priced relative to its starting price' do 
			dealer1.items << toy
			expect(dealer1.items[0].max_discount_amount).to eq(8.4)
		end 
	end 

	describe '#min_discount_amount' do 
		it 'should set the highest a price can be priced relative to its starting price' do 
			dealer1.items << toy
			expect(dealer1.items[0].min_discount_amount).to eq(11.4)
		end 
	end

	describe '#valid_discount_amount?' do 
		it 'should determine if an item is discounted between 5%-30%' do 
			dealer1.items << toy
			dealer1.change_price(1,8)
			expect(dealer1.items[0].valid_discount_amount?).to eq(false)
		end 
	end

	describe '#valid_date?' do 
		it 'should return false since date has been changed within 30 days' do 
			dealer1.items << toy
			expect(dealer1.items[0].valid_date?).to eq(false)
		end 
	end

	describe '#valid_promotion_length?' do 
		it 'should return true if promotion length is less than 30 days' do 
			dealer1.items << toy
			dealer1.change_price(1,9)
			expect(dealer1.items[0].valid_promotion_length?).to eq(true)
		end 
	end 

	describe '#red_pencil_promotion?' do 
		it 'should determine if discounted item meets criteria for promotion' do 
			dealer1.items << toy
			expect(dealer1.items[0].red_pencil_promotion?).to eq(false)
		end 
	end  
end  
