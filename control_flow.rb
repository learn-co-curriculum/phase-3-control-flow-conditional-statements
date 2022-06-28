def admin_login(username, password)
  if username == "admin" && password == "12345" || username == "ADMIN" && password == "12345"
    return "Access granted"
  else 
    return "Access denied"
  end
end

def hows_the_weather(temperature)
  reply = if temperature < 40 
    "brisk" 
  elsif temperature >= 40 && temperature <= 65
    "a little chilly"
  elsif temperature > 85
    "too dang hot" 
  else
    "perfect"
  end
"It's #{reply} out there!"
end

def fizzbuzz(num)
  if num % 3 == 0 && num % 5 == 0
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
  if operation == '+' 
    return num1+num2
  elsif operation == '-'
    return num1-num2
  elsif operation == '*'
    return num1*num2
  elsif operation == '/'
    return num1/num2
  else
    puts "Invalid operation!"
  end
end

