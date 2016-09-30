v1 = 1
class MyClass
  v2 = 2
  p local_variables #=> [:v2]

  def my_method
    v3 = 3
    @v3 = 3
    p local_variables #=> [:v3]
    p instance_variables
    child_method
  end

  def child_method
    p instance_variables
  end

  p local_variables #=> [:v2]
end

obj = MyClass.new
obj.my_method #=> [:v3] [:@v3] [:@v3]
obj.my_method #=> [:v3] [:@v3] [:@v3]
local_variables #=> [:v1, :obj]
