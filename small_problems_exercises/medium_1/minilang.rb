# def push(stack, register)
#   stack << register
# end

# def print(register)
#   p register
# end

# def add(stack, register)
#   register += stack.pop
#   register
# end

def minilang(command)
  stack = []
  register = 0
  values = command.split(' ')

  values.each do |value|
    register = value.to_i if value.to_i.to_s == value
    case value
    when 'PRINT'
      p register
    when 'PUSH'
      stack << register
    when 'ADD'
      register += stack.pop
    when 'MULT'
      register *= stack.pop
    when 'SUB'
      register -= stack.pop
    when 'DIV'
      register /= stack.pop
    when 'MOD'
      register %= stack.pop
    when 'POP'
      register = stack.pop
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)