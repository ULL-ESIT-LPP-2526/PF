# El método extend de la clase Object hace que todos los métodos de los modulos 
# especificados se conviertan en métodos singleton del objeto sobre el que se llama.

# Este método es una abreviación que incluye el módulo en la eigenclass del objeto receptor

module AModule
  def a_method 
    "hello"
  end
end

# extendiendo un objeto
s = "Un objeto cadena: string"
s.extend(AModule)

p s.a_method


# extendiendo una clase 
String.extend(AModule)

p String.a_method
