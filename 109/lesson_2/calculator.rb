require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)   # make sure the "messages" method is declared above this line
  Kernel.puts("=> #{message}")
end

def calculator (a, b)
  prompt("What do you want to do? + - * /: ")
  operator = Kernel.gets().chomp()

  case operator
  when "+"
    c = a+b
    prompt(c)
  when "-"
    c = a-b
    prompt(c)
  when "*"
    c = a*b
    prompt(c)
  when "/"
    c = a/b
    prompt(c)
  else
    prompt("Wrong answer. Try again.")
    calculator()
  end
end

def valid_number? (a)
 return 0 if a == '0' || a == '0.0' 

 a = a.to_f()

 if a == 0 || a == 0.0
  prompt("Please enter a valid number: ")
  a = valid_number?(Kernel.gets().chomp())
end

return a
end

def program ()
  prompt("Insert your first number: ")
  a = valid_number?(Kernel.gets().chomp())

  prompt("Insert your second number: ")
  b = valid_number?(Kernel.gets().chomp())

  calculator(a, b)
end

prompt('welcome')
LANGUAGE = Kernel.gets().chomp()
prompt('welcome')

loop do 
  program()
  prompt('Enter keyword Y if you want to do another calculation?.')
  response = Kernel.gets().chomp()
  break unless response.downcase().start_with?('y')
end
