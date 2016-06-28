class Node
	attr_accessor :n , :left , :right
	def initialize n
		@n = n
		@left = nil
		@right = nil
	end
end

class AVL
	def initialize
		clear
	end
end
