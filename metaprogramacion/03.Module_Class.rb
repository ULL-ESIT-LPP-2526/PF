# Las clases y los módulos son instancias de las clases Class y Module,
# por lo tanto, es posible crearlos dinámicamente

M = Module.new
C = Class.new
S = Class.new(C) { include M }

p Module.ancestors
p Class.ancestors
p M.ancestors
p C.ancestors
p S.ancestors
