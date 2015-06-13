class Stack
	def initialize(top_of_stack, stack_size)
		@top_of_stack = top_of_stack
		@stack = Array.new(stack_size)
	end
	def push(num)
		if( @top_of_stack<10 )
			@stack[@top_of_stack] = num
			@top_of_stack+=1
		else
			puts "Stack Overflow"
		end
	end
	def pop()
		if( @top_of_stack > 0)
			@top_of_stack-=1
			puts "Element popped : #{@stack[@top_of_stack]}"
			@stack[@top_of_stack] = 0
		else
			puts "Stack is empty"
		end
	end
	def print_stack()
		@stack.each { |num| puts "#{num}"  }
	end
end
s1 = Stack.new(0,10)
s1.push(10)
s1.push(30)
s1.pop()
s1.print_stack()