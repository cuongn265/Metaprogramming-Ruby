class MyClass
    p self.ancestors
    define_method :my_method do
      p "My method"
    end

    def define_methods
        shared = 0

        Kernel.send :define_method, :counter do
            shared
        end

        Kernel.send :define_method, :inc do |x|
            shared += x
        end
    end
end
