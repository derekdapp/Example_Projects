class Matrix
 # def self.rotate(o)
 #   rows, cols = o.size, o[0].size
 #   Array.new(cols){|i| Array.new(rows){|j| o[j][cols - i - 1]}}
 # end 
	#take array and turn rows into columns
	#first array is last column...
	#print out rotated version

	def self.rotate(matrix)
		#clarify rows and colums
		#matrix.transpose.reverse
		row_length = matrix.length
		col_length = matrix.first.length
		new_matrix = []
		(col_length-1).downto(0).each do |col_index|
			new_row = []
			(0..row_length-1).each do |row_index|
				new_row << matrix[row_index][col_index]
			end
			new_matrix << new_row
		end
		new_matrix
	end
end

square = [
      [0, 1, 0, 0],
      [0, 1, 1, 0],
      [0, 0, 1, 0],
      [0, 0, 0, 0]
    ]
square.each {|r|puts r.inspect}
solution = Matrix.rotate(square)
puts '*****'
solution.each {|r|puts r.inspect}