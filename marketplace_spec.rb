require_relative 'marketplace'

describe Marketplace do
	let (:marketplace){Marketplace.new} 

	describe 'attributes' do
		it 'should instantiate with a products variable' do 
			expect(marketplace.products).to be_a(Array)
		end 
	end 

	describe '#maximum_length' do 
		it 'should invalidate promotions lasting longer than 30 days' do
		
		end 
	end 

	describe '#price_history' do 
		it 'should check that the price has not changed in 30 days' do
		
		end 
	end 

	describe '#price_increase?' do 
		it 'should invalidate promotions when the price is increased' do
		
		end 
	end 
	describe '#maximum_discount?' do 
		it 'should invalidate promotions when the discount is greater than 30%' do
		
		end 
	end 

end 