def my_method
  x = "Goodbye"
  yield("Wonderful")
end

x = "Hello"
p my_method { |y| "#{x}, #{y} World" } #=> 'Hello, Wonderful World'
