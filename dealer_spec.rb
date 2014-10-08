require_relative 'dealer'

describe Dealer do 
	let(:dealer1){Dealer.new}

	describe 'attributes' do 
		it 'should instantiate a dealer with an empty array' do 
			expect(dealer1.merchandise).to be_a(Array)
		end 
	end 

	describe '#increase_price' do 
		xit 'should raise the price of a good' do 
			expect()
		end  
	end 

	describe '#decrease_price' do 
		xit 'should decrease the price of a good' do 
			expect()
		end 
	end 
end 