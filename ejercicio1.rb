require_relative 'dfs'

input1 = [
[1, 0, 0, 1, 0],
[1, 0, 1, 0, 0],
[0, 0, 1, 0, 1],
[1, 0, 1, 0, 1],
[1, 0, 1, 1, 0]
]

expected1 = [1,2,2,2,5]

input2 = [
[1, 1, 1, 1, 1],
[1, 1, 0, 1, 1],
[0, 0, 0, 0, 0],
[1, 1, 0, 1, 1],
]
expected2 = [2,2,9]

input3 = [
[1, 1, 1, 1, 1],
[1, 1, 1, 1, 1],
]
expected3 = [10]

inputs = [ input1, input2, input3]
expecteds = [expected1, expected2, expected3,]

(0..inputs.size-1).each do |i|
	app = Dfs.new(inputs[i])
	fig = app.process
	puts fig.inspect
	puts "assert: #{fig == expecteds[i]}"  
end
