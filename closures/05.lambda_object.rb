# devolviendo un objeto creado con el método lambda de Kernel 
def n_times(thing)
  lambda {|n| thing * n}
end

f5 = n_times(5)
p f5.call(3)
p f5.call(3.5)

fa = n_times("a")
p fa.call(3)
p fa.call(3.5)
