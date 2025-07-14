def admin_login(username, password)
  (username.downcase == 'admin' && password == '12345') ? "Access granted" : "Access denied"
end

def hows_the_weather(temperature)
  case temperature
  when 0...40
    "It's brisk out there!"
  when 40..65
    "It's a little chilly out there!"
  when 86..Float::INFINITY
    "It's too dang hot out there!"
  else
    "It's perfect out there!"
  end
end

def fizzbuzz(num)
  return "FizzBuzz" if (num % 3 == 0 && num % 5 == 0)
  return "Fizz" if (num % 3 == 0)
  return "Buzz" if (num % 5 == 0)
  num
end

def calculator(operation, num1, num2)
  case operation
  when "+" then num1 + num2
  when "-" then num1 - num2
  when "*" then num1 * num2
  when "/" then num1 / num2
  else
    puts "Invalid operation!"
    nil
  end
end

