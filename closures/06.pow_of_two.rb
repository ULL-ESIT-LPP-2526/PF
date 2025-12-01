def ppg
  value = 1
  lambda {value += value}
end

o = ppg

p o.call
p o.call
p o.call
p o.call
p o.call
