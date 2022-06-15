# Control Flow: Conditional Statements

## Learning Goals

- Conditionally execute code with `if/else` and `case/when` statements
- Use statement modifiers to write cleaner Ruby code

## Introduction

In the last lesson, we saw how to use comparison methods and logical operators
in Ruby. In this lesson, we'll see more examples of how to use those tools to
perform control flow using **conditional statements** with the `if/else` and
`case/when` keywords.

Make sure to code along with the Ruby examples in IRB to help get a feel for the
syntax.

## `if/else` Statements

Ruby has slightly different syntax for writing conditional statements using
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

Here's how we can write the equivalent statement in Ruby:

```rb
# Ruby
dog = "cuddly"

if dog == "hungry"
  owner = "Refilling food bowl."
elsif dog == "thirsty"
  owner = "Refilling water bowl."
elsif dog == "playful"
  owner = "Playing tug-of-war."
elsif dog == "cuddly"
  owner = "Snuggling."
else
  owner = "Reading newspaper."
end
```

In Ruby, unlike JavaScript, `if/else` statements
[have a return value][if-else return], which means we could refactor the code
above as follows:

[if-else return]: https://rubystyle.guide/#use-if-case-returns

```rb
dog = "cuddly"

owner = if dog == "hungry"
          "Refilling food bowl."
        elsif dog == "thirsty"
          "Refilling water bowl."
        elsif dog == "playful"
          "Playing tug-of-war."
        elsif dog == "cuddly"
          "Snuggling."
        else
          "Reading newspaper."
        end
```

## `unless` Statements

In addition to the `if` keyword, Ruby also has the `unless` keyword, which acts
as the opposite of `if`:

```rb
timer = 15

unless timer == 0
  puts "Still cooking"
end
```

You could write the equivalent with an `if` statement and a negative condition:

```rb
timer = 15

if timer != 0
  puts "Still cooking"
end
```

But you'll find that the first example is a [bit nicer to read][if vs unless].

[if vs unless]: https://rubystyle.guide/#unless-for-negatives

## Truthy/Falsy Values

In order to use control flow effectively, it's important to know what values
Ruby treats as "truthy" and "falsy".

As we saw in the lesson on data types, there are only two values Ruby considers
falsy: `false` and `nil`. Using those values in control flow means the condition
will be false:

```rb
def control_flow(value)
  if value
    # if the value is truthy
    puts "yep!"
  else
    # if the value is falsy
    puts "nope!"
  end
end

control_flow(false)
# => "nope!"
control_flow(nil)
# => "nope!"
control_flow(true)
# => "yep!"
control_flow("")
# => "yep!"
control_flow(0)
# => "yep!"
```

## Statement Modifiers

One more nice feature of the Ruby language is the ability to use **statement
modifiers** and write conditions at the end of a line of code. For short,
one-line conditions, it can improve the readability of your code. For example,
you could rewrite this example:

```rb
this_year = Time.now.year
if this_year == 2046
  puts "Hey, it's 2046!"
end
```

Using a statement modifier:

```rb
this_year = Time.now.year
puts "Hey, it's 2046!" if this_year == 2046
```

`unless` can also be used as a statement modifier:

```rb
fav_cookie = "Chocolate Chip"
puts "Your opinion is invalid" unless fav_cookie == "Chocolate Chip"
```

## `case` Statements

Last but not least, Ruby also has `case` statements, which are used to run
multiple conditions against one value. As a reminder, `case` statements can be
useful as a replacement for `if/else` statements,
[when all the conditions use the same comparison][case vs if-else]. Here's a
side-by-side example with Ruby and JavaScript:

[case vs if-else]: https://rubystyle.guide/#case-vs-if-else

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

And in Ruby:

```rb
# Ruby
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
we could refactor this Ruby example:

```rb
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

```rb
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
Ruby to familiarize yourself with the syntax. There is a JavaScript version of
the solution for each of these deliverables in the `js/index.js` file you can
look at (but if you want an extra challenge, try solving them in Ruby without
looking at the JavaScript solution).

Write a method `#admin_login` that takes two arguments, a username and a
password. If the username is "admin" or "ADMIN" and the password is "12345",
return "Access granted". Otherwise, return "Access denied".

```rb
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

```rb
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

```rb
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

```rb
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
syntax between JavaScript and Ruby first, so that you'll be able to take
advantage of some of Ruby's unique features like statement modifiers and the
`unless` keyword in your own code.

One excellent resource for familiarizing yourself with the syntax and the
preferred conventions of some Rubyists is the
[Ruby style guide][ruby style guide]. Make sure to bookmark this resource and
refer to it if you're ever unsure how to format a particular block of code.

## Resources

- [Ruby style guide][ruby style guide]

[ruby style guide]: https://rubystyle.guide
