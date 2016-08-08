def my_collect (array)
i = 0
caps = []
if block_given?
while (i < array.length)
  caps << yield(array[i])
  i+=1
end
caps
end
"This block should not run!"
caps
end

collection = ['ruby', 'javascript', 'python', 'objective-c']


my_collect(collection) do |lang|
  puts lang.upcase
end
