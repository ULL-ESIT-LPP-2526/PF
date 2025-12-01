# Conversión implicita de un bloque en un objeto de la clase Proc

class ProcExample
  def pass_in_block(&action)
    @stored_proc = action
  end

  def use_proc(parameter)
    @stored_proc.call(parameter)
  end
end

e = ProcExample.new

e.pass_in_block

e.use_proc(10)
