class Dfs
	
	def initialize(input)
		@input = input
		@count_ones = 0
		@visited = []
		@figures = []
		(0..input.size-1).each do |i|
			@visited << Array.new(input[i].size,0) 
		end
	end

	def process
		(0..@input.size-1).each do |row|
			(0..@input[row].size-1).each do |col|
				@count_ones = 0
				dfs(row,col)
				@figures<<@count_ones unless @count_ones.zero?
			end
		end	
		@figures.sort!  # return figures implicit
	end

	def dfs(row,col)
		if @visited[row][col].zero? 
			@visited[row][col] = 1 
			if @input[row][col]==1
				#puts ">>Visitando #{row},#{col}"
				@count_ones +=1		
				if row+1<@input.size
					dfs(row+1,col) if @visited[row+1][col].zero? and @input[row+1][col]==1
				end
				if col+1<@input[row].size
					count_ones = dfs(row,col+1) if @visited[row][col+1].zero? and @input[row][col+1]==1
				end
				#puts "<<#{@count_ones}"	
			end
			else @count_ones = 0	
		end	
	end

end
