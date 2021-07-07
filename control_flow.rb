def admin_login(username, password)
  if (username == "admin" || username == "ADMIN") && password == "12345"
    "Access granted"
  else
    "Access denied"
  end
end

def hows_the_weather(temperature)
  response =  if temperature < 40
                "brisk"
              elsif temperature >= 40 && temperature <= 65
                "a little chilly"
              elsif temperature > 85
                "too dang hot"
              else
                "perfect"
              end

  "It's #{response} out there!"
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

# Here's an alternate solution for calculator with some fun Ruby metaprogramming
def meta_calculator(operation, num1, num2)
  if ["+", "-", "*", "/"].include?(operation)
    # the .send method lets you use a string or a symbol as a method
    # so, the line below translates to 4.send("/", 2)
    # which is equivalent to 4 / 2
    # https://stackoverflow.com/a/3337954
    num1.send(operation, num2)
  else
    puts "Invalid operation!"
  end
end
