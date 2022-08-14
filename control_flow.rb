def admin_login(username, password)
  if username.upcase == 'ADMIN' && password == '12345'
    return 'Access granted'
  end
  "Access denied"
end

def hows_the_weather(temperature)
  if temperature < 40
    "It's brisk out there!"
  elsif temperature < 65
    "It's a little chilly out there!"
  elsif temperature < 85
    "It's perfect out there!"
  else
    "It's too dang hot out there!"
  end
end

def fizzbuzz(num)
  if num % 3 == 0 && num % 5 == 0
    "FizzBuzz"
  elsif num%3 == 0
    "Fizz"
  elsif num%5 == 0
    "Buzz"
  else
    num
  end
end

def calculator(operation, num1, num2)
  case operation
  when "+"
    num1 + num2
  when "-"
    num1 - num2
  when "*"
    num1 * num2
  when "/"
    num1 / num2
  else
    puts "Invalid operation!"
  end
end


def calculator(operation, num1, num2)
  if ["+", "-", "*", "/"].include?(operation)
    num1.send(operation, num2)
  else
    puts "Invalid operation!"
  end
end
