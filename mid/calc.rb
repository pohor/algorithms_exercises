def menu
  puts "\nChoose operation:"
  puts "1. Add numbers"
  puts "2. Subtract numbers"
  puts "3. Multiply numbers"
  puts "4. Divide numbers"
  puts "5. Quit"
  puts "What is your choice?:"
end

def add
  puts "Enter first number:"
  num1 = gets.to_i
  puts "Enter second number:"
  num2 = gets.to_i
  puts "==>#{num1} + #{num2} = #{num1+num2}\n"
end

def substract
  puts "Enter first number:"
  num1 = gets.to_i
  puts "Enter second number:"
  num2 = gets.to_i
  puts "==>#{num1} - #{num2} = #{num1-num2}\n"
end

def multiply
  puts "Enter first number:"
  num1 = gets.to_i
  puts "Enter second number:"
  num2 = gets.to_i
  puts "==>#{num1} * #{num2} = #{num1*num2}\n"
end

def divide
  puts "Enter first number:"
  num1 = gets.to_i
  puts "Enter second number:"
  num2 = gets.to_i
  puts "==>#{num1} / #{num2} = #{num1/num2}\n"
end

def calc_menu
  loop do
    menu do
      yield
    end
    usr_answ = gets.to_i
      if usr_answ == 5
        puts "Bye, bye"
        break
      elsif usr_answ == 1
        add do
          yield
        end
      elsif usr_answ == 2
        substract do
          yield
        end
      elsif usr_answ == 3
        multiply do
          yield
        end
      elsif usr_answ == 4
        divide do
          yield
        end
      end
  end
end

calc_menu
