# Los bloques no son objetos
#
# {|x| x = x * 10; puts x }
#
# objects.rb:2: syntax error, unexpected '}', expecting end-of-input
#
#
# do |x| 
#  x = x * 10 
#  puts x 
# end
#
# objects.rb:7: syntax error, unexpected keyword_do_block
# do |x| 
#   ^
# objects.rb:10: syntax error, unexpected keyword_end, expecting end-of-input
#
#
# Convertir un bloque en un objeto de la clase Proc con su método new
a = Proc.new {|x| x = x * 10; puts x }

# Ejecutar el código del bloque invocando al método call del objeto de la clase Proc
#
#a.call
#
# objects.rb:20:in `block in <main>': undefined method `*' for nil:NilClass (NoMethodError)
#         from objects.rb:23:in `call'
#         from objects.rb:23:in `<main>'
# 
# Como no se comprueban los parámetros lo que indica es que nil no se puede multiplicar por 10
# 
# Si se invoca con un parámetro 
# 
a.call(100)
#
a.call("a")
#
# Si se invoca con más de un parámetro 
# 
a.call(1,2,3)

# Convertir un bloque en un objeto de la clase Proc con el método lambda del módulo Kernel
b = lambda do |x| 
  x = x * 10 
  puts x 
 end

# b = lambda {|x| x = x * 10; puts(x) }

# Si se invoca con un parámetro 
# 
b.call(100)
#
b.call("a")
#
# Si se invoca con más de un parámetro 
# 
b.call(1,2,3)
#
# objects.rb:43:in `block in <main>': wrong number of arguments (3 for 1) (ArgumentError)
#        from objects.rb:53:in `call'
#        from objects.rb:53:in `<main>'
