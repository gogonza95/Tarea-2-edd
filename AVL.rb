class Contact
	attr_accessor :name , :sur , :phone , :address
    def initialize (name, sur, phone, address)
     	@name = name
     	@sur = sur
     	@phone = phone
     	@address = address
    end
end

class NodeAVL
	attr_accessor :c , :left , :right , :f
	def initialize c
		@c = c
		@left = nil
		@right = nil
		@f = 0
	end
end

class AVL
	def initialize
		@root = nil
	end

	def get_f (node)
		if(node == nil)
			return -1
		else
			return node.f
		end
	end

	def insert contact 
		return unless contact.is_a? Contacto
		if root.nil?
			root = NodeAVL.new(contact)
		else
			n = NodeAVL.new(contact)
			insert_rec(n,root)
	    end
	end

	def insert_rec(father,son)
		new_father = NodeAVL.new(father.contact)
		n1 = father.c.ap <=> son.c.ap
		n2 = father.c.ap <=> son.left.c.ap
		n3 = father.c.ap <=> son.right.c.ap
		if (n1 >= 1)
			if son.left.nil?
				son.left = father
			else
				son.left = insert_rec(father,son.left)
			end

			if ((son.left.get_f - son.right.get_f) > 1) ||(son.left.get_f - son.right.get_f) < -1))
	            if n2 >= 1
	            	new_father = rotation_left(son)
	            else
	            	new_father = rotation_double_left(son)
	            end
	        end
	    else
	    	if son.right.nil?
	    		son.right = father
	    	else
	    		son.right = insert_rec(father,son.right)
	    	end

	    	if ((son.right.get_f - son.left.get_f) > 1) ||(son.right.get_f - son.left.get_f) < -1))
	            if n3 < -1
	            	new_father = rotation_right(son)
	            else
	            	new_father = rotation_double_right(son)
	            end
	        end
	    end

	    if son.left == nil && son.right != nil
	    	son.f = son.right.f + 1
	    else
	    	if son.right == nil && son.left != nil
	    	son.f = son.left.f + 1
	        else
	    























end
