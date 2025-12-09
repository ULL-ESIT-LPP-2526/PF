# Métodos para determinar qué módulos has sido incluídos y cuáles no

module ModuloIncluido
end

module ModuloExterno 
  include ModuloIncluido
end

class UnaClase
  include ModuloExterno 
end

p UnaClase < ModuloExterno
p ModuloExterno < ModuloIncluido
p UnaClase < ModuloIncluido

p Integer < Numeric
p Integer < Comparable

p ModuloIncluido.ancestors  
p ModuloExterno.ancestors
p UnaClase.ancestors
p Integer.ancestors

p UnaClase.include? ModuloExterno
p UnaClase.include? ModuloIncluido
p ModuloExterno.include? ModuloIncluido
p ModuloIncluido.include? ModuloIncluido
p ModuloIncluido.include? ModuloExterno

p ModuloIncluido.included_modules
p ModuloExterno.included_modules
p UnaClase.included_modules 

p Module.instance_methods(true).select {|x| x =~ /include/ }
p Module.private_methods.select {|x| x =~ /include/ }
