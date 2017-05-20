#take first number
# take modifier
# take last number
# puts result
# error checking
# user input and modifiers should be checked for proper input type
# result should set first_number and allow for another modifier and last number so result continues to build until the user decides to clear the calculator
# - make + - * / work
# - make clear work



def compute
  puts "#{@num1} #{@operator} #{@num2}"

  if (@operator == '+')
    #do math
    puts "#{@num1.to_f + @num2.to_f}"

  elsif (@operator == '-')
    puts "#{@num1.to_f - @num2.to_f}"
    
  elsif (@operator == '*')
    puts "#{@num1.to_f * @num2.to_f}"
    
  elsif (@operator == '/')
    puts "#{@num1.to_f / @num2.to_f}"
    
  else
    puts "Invalid operator"
    operator_method
  end

end

def checking_num2
  if (@num2 =~ /[0-9]+/)
    compute
  else
    puts "No can"
    get_num2
  end
end

def get_num2 
  puts "What is the second number"
  @num2 = gets.chomp
  checking_num2
end

def checking_operator
  if (@operator == "+" || @operator == "-" || @operator == "*" || @operator == "/")
    get_num2
  # elsif (@operator == "-")
  #   return
  else
    puts "No can"
    operator_method 
  end
end

def operator_method
  puts "What is the operator"
  @operator = gets.chomp
  checking_operator
end

def get_num1
  puts "What is the first number"

  # @num1 = 0;
  # @num1 = gets.chomp

  @num1 = gets.chomp
  checking_num1 
end

def checking_num1 
  if (@num1  =~ /[0-9]+/)
    @num1.to_f
    operator_method  
  else 
    puts "No can you"
    get_num1
    # puts a message that they didn't put number
    # send them back to the place to get the number again
  end
end

while true
  puts "Aloha welcome to Josie's Calculator"
  get_num1
end











 