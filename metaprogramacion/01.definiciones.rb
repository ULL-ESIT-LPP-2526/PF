# La metaprogramación consiste en escribir programas que ayudan a crear 
# otros programas así como a sus datos.
#
# El lenguaje en el que se escribe el metaprograma se denomina 
# metalenguaje
#

# El lenguaje de los programas que son manipulados se denomina 
# lenguaje objeto
#

# La habilidad de un lenguaje de programación para ser su 
# propio metalenguaje se denomina reflexión.
#

# La metaprogramación es el conjunto de técnicas que permiten extender 
# la sintaxis de Ruby para hacer más fácil la programación.
#

# La metaprogramación esta fuertemente relacionada con la definición de 
# Lenguajes de Dominio Específico (Domain Specific Languages). 
# Por ejemplo: Rake, RSpec, Gemfile, etc.
#

# Métodos reflexivos o instrospectivos:


a_object = [1, { :uno => 1}]

p a_object.class

p a_object.class.superclass

p a_object.instance_of? Object

p a_object.instance_of? Array

p a_object.is_a? Object

p a_object.is_a? Array

p a_object.respond_to? :each

l = Array.instance_methods(false)
p l.length
p l

t = Array.instance_methods(true)
p t.length
p t


