# Una closure es una función que tiene la habilidad de almacenar
# los valores de las variables locales dentro del ámbito en el cual
# el bloque fué creado, es decir, el ámbito nativo del bloque.

x = "hello world"
a_block = Proc.new { puts x }

def a_method (a_block_arg)
  x = "good bye"
  a_block_arg.call
end

puts x
a_block.call
a_method(a_block)
a_block.call
puts x
