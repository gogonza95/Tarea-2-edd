class Contacto
    def initialize (name, ap, tel, address, email)
     	@name = name
     	@ap = ap
     	@tel = tel
     	@address = address
     	@email = email
    end
end

class NodeAVL
	attr_accessor :n , :left , :right , :d
	def initialize n
		@n = n
		@left = nil
		@right = nil
		@d = 0
	end
end

class AVL
	def initialize
		@root = nil
	end


end
