require_relative "node.rb"

def add_node(data, parent)
	child = Node.new(data, parent)

	if parent.value >= data && parent.left_child == nil
		parent.left_child = child
	elsif parent.value < data && parent.right_child == nil
		parent.right_child = child
	else
		parent.value >= data ? add_node(data, parent.left_child) : add_node(data, parent.right_child)
	end

end

def build_tree(array)
	root = Node.new(array[0])
	array.each_with_index do |element, index|
		add_node(element, root) if index != 0
	end
	root
end

def breadth_first_search(node, search_value)
	queue = []
	queue << node

	until queue.empty?
		return queue[0] if queue[0].value == search_value
		queue << queue[0].left_child if !queue[0].left_child.nil?
		queue << queue[0].right_child if !queue[0].right_child.nil?
		queue.shift
	end
	return nil
end

def dfs_rec(node, search_value)
	return nil if node.nil?
	return node if node.value == search_value
	a = dfs_rec(node.left_child, search_value)
	b = dfs_rec(node.right_child, search_value)
	return a unless a.nil?
	return b unless b.nil?
end

root = build_tree([1,7,4,23,8,9,4,3,5,7,9,67,6345,324])
puts dfs_rec(root, 324)
puts breadth_first_search(root, 324)


def depth_first_search(node, search_value)
	stack = []
	stack << node

	until stack.empty?
		pointer = stack.pop
		return pointer if pointer.value == search_value
		stack << pointer.right_child unless pointer.right_child.nil?
		stack << pointer.left_child unless pointer.left_child.nil?
	end

	nil
end

puts depth_first_search(root, 324)