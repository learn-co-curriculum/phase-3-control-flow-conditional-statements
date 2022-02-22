def admin_login(username, password)
  if username.downcase == "admin" && password == "12345"
    "Access granted"
  else 
    "Access denied"
  end
end

def hows_the_weather(temperature)
  if temperature < 40
    return "It's brisk out there!"
  elsif temperature > 40 && temperature < 65
    return "It's a little chilly out there!"
  elsif temperature > 85
    return "It's too dang hot out there!"
  else
    return "It's perfect out there!"
  end
end

def fizzbuzz(num)
  if num % 5 == 0 && num % 3 == 0
    "FizzBuzz"
  elsif num % 3 == 0
    "Fizz"
  elsif num % 5 == 0
    "Buzz"
  else
    num
  end
end

def calculator(operation, num1, num2)
  # if operation == '+'
  #   num1 + num2
  # elsif operation == '-'
  #   num1 - num2
  # elsif operation == '*'
  #   num1 * num2
  # elsif operation == '/'
  #   num1 / num2
  # else
  #   puts 'Invalid operation!'
  # end
  
  case operation
  when '+'
    num1 + num2
  when '-'
    num1 - num2
  when '*'
    num1 * num2
  when '/'
    num1 / num2
  else
    puts 'Invalid operation!'
  end
end

