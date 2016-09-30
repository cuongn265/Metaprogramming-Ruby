def a_scope
  $var = "some value"
end

def another_scope
  $var
end

p a_scope #=> "some value"
p another_scope #=> "some value"

@var = "The top-level @var"

def my_method
  @var
end

p my_method #=> "The top-level @var"

class MyClass
  def my_method
    @var = "This is not the top-level @var"
  end
end

obj = MyClass.new
p obj.my_method #=> "This is not the top-level @var"
