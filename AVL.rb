class Contact
	attr_accessor :name , :surname , :phone , :address
    def initialize (name, surname, phone, address)
     	@name = name
     	@surname = surname
     	@phone = phone
     	@address = address
    end
end

class NodeAVL
	attr_accessor :contact , :left , :right , :f , :cant
	def initialize contact
		@contact = contact
		@left = nil
		@right = nil
		@f = 0
		@cant = 0
	end
end

class AVL
	def initialize
		@root = nil
	end
	def insert contact 
		return unless contact.is_a? Contacto
		if root.nil?
			root = NodeAVL.new(contact)
			cant += 1
		else
			n = NodeAVL.new(contact)
			insert_rec(n,root)
			cant += 1
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
	    if (son.left == nil && son.right != nil)
	    	son.f = son.right.f + 1
	    elsif (son.right == nil && son.left != nil)
	    	son.f = son.left.f + 1
	    else
	    	var = 0
	    	if(get_f(son.left) > get_f(son.right))
	    		var = get_f(son.left)
	    	else
	    		var = get_f(son.right)
	    	end
	    	son.f = var + 1
	    end
	    return new_father
	end

	def search apellido
        return false if root.nil?
        return true if root.contact.surname == apellido
        n = root.contact.surname <=> apellido
        if (n == -1 || n == 0)
            return search(root.right, elem)
        else
            return search(root.left, elem)
        end
    end
    def rotation_left node
    	aux = NodeAVL.new(node.contact) 
    	aux = node.left
    	node.left = aux.right
    	aux.right = node
    	var = 0
    	var_aux = 0

    	if(get_f(node.left) > get_f(node.right))
    		var = get_f(node.left) + 1
    	else
    		var = get_f(node.right) + 1
    	end
    	node.f = var

    	if(get_f(aux.left) > get_f(aux.right))
    		var_aux = get_f(node.left) + 1
    	else
    		var_aux = get_f(node.right) + 1
    	end
    	aux.f = var_aux

    	return aux
    end

    def rotation_right node
    	aux = NodeAVL.new(node.contact) 
    	aux = node.right
    	node.right = aux.left
    	aux.left = node
    	var = 0
    	var_aux = 0

    	if(get_f(node.left) > get_f(node.right))
    		var = get_f(node.left) + 1
    	else
    		var = get_f(node.right) + 1
    	end
    	node.f = var

    	if(get_f(aux.left) > get_f(aux.right))
    		var_aux = get_f(node.left) + 1
    	else
    		var_aux = get_f(node.right) + 1
    	end
    	aux.f = var_aux

    	return aux
    end
    def rotation_double_left node
    	n = NodeAVL.new(node.contact)
    	node.left = rotation_right(node.left)
    	n = rotation_left(node)
    	return n
    end
    def rotation_double_right node
    	n = NodeAVL.new(node.contact)
    	node.right = rotation_left(node.right)
    	n = rotation_right(node)
    	return n
    end
    def remove apellido
    	pronto... 














    
    

	
	