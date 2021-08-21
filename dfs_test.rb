require 'test/unit'
require_relative 'dfs'


class DfsTest < Test::Unit::TestCase

	def test_input_sample
		inputSample = [
		[1, 0, 0, 1, 0],
		[1, 0, 1, 0, 0],
		[0, 0, 1, 0, 1],
		[1, 0, 1, 0, 1],
		[1, 0, 1, 1, 0]
		]

		expectedSample = [1,2,2,2,5]

		base_test(inputSample,expectedSample) 

	end

	def test_another_input
		input2 = [
		[1, 1, 1, 1, 1],
		[1, 1, 0, 1, 1],
		[0, 0, 0, 0, 0],
		[0, 0, 1, 0, 0],
		[1, 1, 0, 1, 1],
		[0, 1, 0, 1, 0],
		]
		expected2 = [1,3,3,9]
		base_test(input2,expected2)
	end

	def test_only_zeroes
		inputZeroes = [
		[0, 0, 0],
		[0, 0, 0],
		[0, 0, 0],
		]
		
		expectedZeroes =[]
		
		base_test(inputZeroes,expectedZeroes) 
	end

	def test_only_ones
		inputOnes = [
		[1, 1, 1, 1, 1],
		[1, 1, 1, 1, 1],
		]
		expectedOnes = [10]
		base_test(inputOnes, expectedOnes)
	end


	private

	def base_test(input,expected)
		app = Dfs.new(input)
		fig = app.process
		assert_equal fig,expected, "#{fig} mut be equal to #{expected}" 
	end	
end
