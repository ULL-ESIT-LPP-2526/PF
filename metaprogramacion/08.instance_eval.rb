# El método instance_eval de la clase BasicObject 
#    define métodos singleton del objeto
# Por lo tanto, define métodos de clase cuando el objeto es una clase.

# El método class_eval de la clase Module define métodos de instancia

class Demo
  def initialize
    @secret = 99 
  end
end

k = Demo.new
p k.instance_eval {@secret}

k.instance_eval "def a_singlenton_method; p self; %q{hello}; end"
p k.a_singlenton_method

Demo.instance_eval do
  def a_class_method
    self
  end
end

p Demo.a_class_method
