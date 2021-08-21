require_relative 'dfs'

input = [
[1, 0, 0, 1, 0],
[1, 0, 1, 0, 0],
[0, 0, 1, 0, 1],
[1, 0, 1, 0, 1],
[1, 0, 1, 1, 0]
]

app = Dfs.new(input)
fig = app.process
puts fig.inspect
