require './largest.rb'

describe "largest sum of integers" do 
	let(:myarray) {Largest.new([-10, 2, 3, -2, 0, 5, -15])}

	it "sum of 1 contiguous integers in the array" do
	   
	   expect(myarray.largest(1)).to eq 5
	end

	it "sum of 2 contiguous integers in the array" do
       
       expect(myarray.largest(2)).to eq 5       
	end

	it 'should return the largest sum of the integers in groups of 3' do

		expect(myarray.largest(3)).to eq 3
 	end

 	it 'should return the largest sum of the integers' do

 		expect(myarray.large).to eq 8
 	end

 	it 'should return the largest array of the integers - new version' do
		newversion = MaxSubArray.new
		result = newversion.find([-10, 2, 3, -2, 0, 5, -15])

		expect(result).to eq [2, 3, -2, 0, 5]
 	end

 	it 'should return the largest sum - new version' do
		newversion = MaxSubArray.new
		result = newversion.find([-10, 2, 3, -2, 0, 5, -15])
		sum = result.inject(0) {|sum, n| sum + n}

		expect(sum).to eq 8
 	end

end