# En la clase Proc se define un método binding.

def a_method(param)
  proc {}
end

def multiplier(n)
  lambda do |*arr|
     arr.collect { |i| i*n}
  end
end

obj = a_method(99)
p eval( "param", obj.binding)


doubler = multiplier(2)
p doubler [1,2,3]

p eval("n = 3", doubler.binding)
p doubler [1,2,3]

p eval("n = 5", doubler.binding)
p doubler [1,2,3]
