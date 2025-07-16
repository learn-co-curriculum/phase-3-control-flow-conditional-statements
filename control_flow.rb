def admin_login(username, password) 
  if (username == "admin" || username == "ADMIN") && password == "12345"
   "Access granted"
  else
    "Access denied"
  end
end

def hows_the_weather(temperature)
  case temperature
when 0..39
   "It's brisk out there!"
when 40..65
   "It's a little chilly out there!"
when 85..100
   "It's too dang hot out there!"
else 
   "It's perfect out there!"
  end
end

def fizzbuzz(num)
 if num % 3 == 0 && num % 5 == 0
  "FizzBuzz" 
 elsif num % 3 == 0
  "Fizz"
 elsif num % 5 == 0
  "Buzz"
 else num % 16
  end
end

def calculator(operation, num1, num2)
  if operation == "+"
    num1 + num2
  elsif operation == "-"
    num1 - num2
  elsif operation == "*"
    num1 * num2
  elsif operation == "/"
    num1 / num2 
  else
    puts "Invalid operation!"
  end
end
