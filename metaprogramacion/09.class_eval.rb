# El método class_eval de la clase Module define métodos de instancia

class Demo
  def initialize
    @secret = 99 
  end
end

Demo.class_eval {
  def a_instance_method
    self
  end
}

k = Demo.new
p k.a_instance_method
