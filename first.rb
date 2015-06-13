num = Array.new(10)
num = [10,12,1,15,16,13,18,9,15]
min = 0
for i in (0..(num.length-1))
	min = i
	for j in ((i+1)..(num.length-1))
		if(num[j]<num[min])
			min = j
		end
	end
	if( min!= i)
		temp = num[i]
		num[i] = num[min]
		num[min] = temp
	end
end
num.each { |num| puts "#{num}"  }