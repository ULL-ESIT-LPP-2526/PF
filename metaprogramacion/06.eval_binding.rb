# La Clase Binding permite representar el ambiente en un momento dado
# El método binding devuelve un objeto Binding con el ambiente en el momento de la llamada.
class Demo
  def initialize(n)
    @secret = n
  end

  def get_binding
    return binding
  end
end

k1 = Demo.new(99)
b1 = k1.get_binding

k2 = Demo.new(-3)
b2 = k2.get_binding


p eval("@secret", b1)
p eval("@secret", b2)
p eval("@secret")
