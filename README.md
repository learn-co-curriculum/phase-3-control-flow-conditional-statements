# Control Flow: Conditional Statements

## Learning Goals

- Conditionally execute code with `if/else` statements
- Handle exceptions using `try/except` statements
- Use dictionary mapping to handle `switch/case` logic

## Introduction

In the last lesson, we saw how to use comparison methods and logical operators
in Python. In this lesson, we'll see more examples of how to use those tools to
perform control flow using **conditional statements** with the `if/else` and
`try/except` keywords. We will also discuss how Python approaches `switch/case`
statements.

Make sure to code along with the Python examples in IRB to help get a feel for the
syntax.

## `if/else` Statements

Python has slightly different syntax for writing conditional statements using
`if/else` than JavaScript. Here's a relatively complex `if/else` statement in
JavaScript:

```js
// JavaScript
let dog = "cuddly";
let owner;

if (dog === "hungry") {
  owner = "Refilling food bowl.";
} else if (dog === "thirsty") {
  owner = "Refilling water bowl.";
} else if (dog === "playful") {
  owner = "Playing tug-of-war.";
} else if (dog === "cuddly") {
  owner = "Snuggling.";
} else {
  owner = "Reading newspaper.";
}
```

Here's how we can write the equivalent statement in Python:

```py
# Python
dog = "cuddly"

if dog == "hungry":
    owner = "Refilling food bowl."
elif dog == "thirsty":
    owner = "Refilling water bowl."
elif dog == "playful":
    owner = "Playing tug-of-war."
elif dog == "cuddly":
    owner = "Snuggling."
else:
    owner = "Reading newspaper."
```

## Truthy/Falsy Values

In order to use control flow effectively, it's important to know what values
Python treats as "truthy" and "falsy".

As we saw in the lesson on data types, there are many values Python considers
falsy:

- Empty lists `[]`
- Empty tuples `()`
- Empty dictionaries `{}`
- Empty sets `set()`
- Empty strings `''` or `""`
- Zero of any numeric type (`0`, `0.0`)
- `None`
- And, of course, `False`

Using those values in control flow means the condition
will be `False`:

```py
def control_flow(value):
    if value:
        # if the value is truthy
        print("yep!")
    else:
        # if the value is falsy
        print("nope!")

control_flow(False)
# "nope!"
control_flow(None)
# "nope!"
control_flow(True)
# "yep!"
control_flow("")
# "nope!"
control_flow(0)
# "yep!"
control_flow("0")
# "nope!"
```

## `try/except` Statements

Throughout our Python assignments so far, we have seen a number of different
**Exceptions**. As we learned in our "Error Messages" lesson, Exceptions are
a type of error that we can intercept so that our Python application can
continue to run. `try/except` statements are the tool that allow us to perform
these interceptions.

Let's take a look at how we might handle a common mathematical exception. Copy
the following code into the Python shell and try to run the `divide()` function
with different parameters.

```py
def divide(num1, num2):
    try:
        quotient = num1 / num2
        print(quotient)
    except:
        print("An error occurred")
```

Did you find any parameters that gave you trouble? The `divide()` function will
fail to perform its primary task if `num2` is 0 or either of the numbers is of
a non-numerical type. Our `try/except` statement allowed our function to run to
completion, but `"An error occurred"` is not a particularly helpful message.

Since we know the types of exceptions we might see, let's rewrite our code to
be a little more descriptive:

```py
def divide(num1, num2):
    try:
        quotient = num1 / num2
        print(quotient)
    except ZeroDivisionError:
        print("Error: num2 cannot be equal to 0")
    except TypeError:
        print("Error: input must be of type int or float")
```

That's looking much more descriptive now!

Finally, let's take a look at `finally`. Copy and paste the following code
into the Python shell and test `divide()` with a variety of different
arguments:

```py
def divide(num1, num2):
    try:
        quotient = num1 / num2
        print(quotient)
    except ZeroDivisionError:
        print("Error: num2 cannot be equal to 0")
    except TypeError:
        print("Error: input must be of type int or float")
    finally:
        print("Isn't division fun?")
```

Use of the `finally` keyword at the end of a `try/except` statement allows us
to perform actions that we want to occur regardless of whether or not an
exception has been thrown.

> NOTE: You might see some unhandled exceptions if you provide `divide()` too
> many arguments or names that have not been defined. Since these technically
> occur before `divide()` starts working, they cannot be handled with a
> `try/except` statement inside of `divide()`.

## `case` Statements

Last but not least, Python also has `case` statements, which are used to run
multiple conditions against one value. As a reminder, `case` statements can be
useful as a replacement for `if/else` statements,
[when all the conditions use the same comparison][case vs if-else]. Here's a
side-by-side example with Python and JavaScript:

[case vs if-else]: https://Pythonstyle.guide/#case-vs-if-else

```js
// JavaScript
let dog = "cuddly";
let owner;

switch (dog) {
  case "hungry":
    owner = "Refilling food bowl.";
    break;
  case "thirsty":
    owner = "Refilling water bowl.";
    break;
  case "playful":
    owner = "Playing tug-of-war.";
    break;
  case "cuddly":
    owner = "Snuggling.";
    break;
  default:
    owner = "Reading newspaper.";
    break;
}
```

And in Python:

```py
# Python
dog = "cuddly"

case dog
when "hungry"
  owner = "Refilling food bowl."
when "thirsty"
  owner = "Refilling water bowl."
when "playful"
  owner = "Playing tug-of-war."
when "cuddly"
  owner = "Snuggling."
else
  owner = "Reading newspaper."
end
```

`case` statements, like `if` statements, also produce a return value, so again,
we could refactor this Python example:

```py
dog = "cuddly"

owner = case dog
        when "hungry"
          "Refilling food bowl."
        when "thirsty"
          "Refilling water bowl."
        when "playful"
          "Playing tug-of-war."
        when "cuddly"
          "Snuggling."
        else
          "Reading newspaper."
        end
```

You can also use `then` with `when` to shorten up each condition to a single line:

```py
dog = "cuddly"

owner = case dog
        when "hungry" then "Refilling food bowl."
        when "thirsty" then "Refilling water bowl."
        when "playful" then "Playing tug-of-war."
        when "cuddly" then "Snuggling."
        else "Reading newspaper."
        end
```

## Instructions

Time to get some practice! Write your code in the `control_flow.rb` file. Run
`learn test` to check your work. Your goal is to practice using control flow in
Python to familiarize yourself with the syntax. There is a JavaScript version of
the solution for each of these deliverables in the `js/index.js` file you can
look at (but if you want an extra challenge, try solving them in Python without
looking at the JavaScript solution).

Write a method `#admin_login` that takes two arguments, a username and a
password. If the username is "admin" or "ADMIN" and the password is "12345",
return "Access granted". Otherwise, return "Access denied".

```py
admin_login("sudo", "12345")
# => "Access denied"
admin_login("admin", "12345")
# => "Access granted"
admin_login("ADMIN", "12345")
# => "Access granted"
```

Write a method `#hows_the_weather` that takes in one argument, a temperature.
If the temperature is below 40, return "It's brisk out there!". If the
temperature is between 40 and 65, return "It's a little chilly out there!".
If the temperature is above 85, return "It's too dang hot out there!".
Otherwise, return "It's perfect out there!"

```py
hows_the_weather(33)
# => "Brisk!"
hows_the_weather(99)
# => "Too dang hot"
hows_the_weather(75)
# => "Perfect!"
```

Write a method `#fizzbuzz` takes in a number. For multiples of three, return
"Fizz" instead of the number. For the multiples of five, return "Buzz". For
numbers which are multiples of both three and five, return "FizzBuzz". For
all other numbers, just return the number itself.

```py
fizzbuzz(1)
# 1
fizzbuzz(2)
# 2
fizzbuzz(3)
# Fizz
fizzbuzz(4)
# 4
fizzbuzz(5)
# Buzz
fizzbuzz(15)
```

Write a method `#calculator` that takes three arguments: an operation and two
numbers. If the operation is one of the following: `+`, `-`, `*`, or `/`,
return the value of calling the operation on the two numbers. Otherwise,
output a message saying "Invalid operation!" and return `nil`.

```py
calculator("+", 1, 1)
# => 2
calculator("-", 3, 1)
# => 2
calculator("*", 3, 2)
# => 6
calculator("/", 4, 2)
# => 2
calculator("nope", 4, 2)
# "Invalid operation!"
# => nil
```

## Conclusion

Since you're already familiar with these control flow structures from
JavaScript, you should have a good intuition of when it's appropriate to use
these different tools. Try and develop familiarity with the differences in
syntax between JavaScript and Python first, so that you'll be able to take
advantage of some of Python's unique features like statement modifiers and the
`unless` keyword in your own code.

One excellent resource for familiarizing yourself with the syntax and the
preferred conventions of some Pythonists is the
[Python style guide][Python style guide]. Make sure to bookmark this resource and
refer to it if you're ever unsure how to format a particular block of code.

## Resources

- [Python style guide][Python style guide]

[Python style guide]: https://Pythonstyle.guide
