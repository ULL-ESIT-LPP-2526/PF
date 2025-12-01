# ¿Qué sucede cuando un método devuelve el objeto que ha creado al convertir un bloque en un objeto?

def create_block_object(&block)
  block
end

bo = create_block_object { |arg| puts "The argument is #{arg}"}

bo.call 10
bo.call "a"
