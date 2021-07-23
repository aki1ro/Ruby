puts "hellow world" # Creates new line after text 

p "Hellow world" # Does create new line as well and prints arrays in brackets

print "Hello" # print does not create new line and will print arrays in brackets
print "World"

=begin
This is multi-
line comment
=end


=begin
Variables beginning with a capital letter are called constants.
The value of a constant variable cannot be changed once it has been assigned.
=end

x = 8
X = 9
y = 2
puts x

print x

#outputs 8
puts X

age = 21

# To insert the value of a variable into a double quote string (a string is a sequence of characters, such as "Hello"), use the # symbol and curly brackets with the variable name.


puts "He is #{age} years old"

# Math

puts x + y
puts y - x
puts x/y
puts x*y

a = 2
b = 5 
puts a**b

# Shorthand for operators
x += y  # x=x+y
x -= y  # x=x-y
x *= y  # x=x*y
x /= y  # x=x/y
x %= y  # x=x%y
x **= y  # x=x**y

u, j, k = 1, 2, 3

puts u
puts j
puts k
puts u + j + k

text = "Nick\'s World"

text2 = "Nick\'s \nWorld"

puts text 

puts text2

puts "#{text} times #{u * j * k}"

#Use "gets" to get input from user in Ruby returns what user types as string also in includes the new line at the end as well, if you want to not include new line use "gets.chomp"

#x = gets

puts x 

#puts "Enter your name is #{x}"

puts "Enter your name"

#name = gets.chomp

#puts "Welcome, #{name}"


#Only true and false are Booleans. nil is not a Boolean. 0 is not a Boolean. The string "Hello" is not a Boolean. However, in a context where a Boolean is expected, Ruby evaluates them as Boolean (truthy and falsey).

=begin
If you try to evaluate a value other than true or false as a Boolean, Ruby will automatically treat it as a Boolean. When this is done, a non-Boolean value that evaluates to true is called "truthy" and a non-Boolean value that evaluates to false is called "falsey".
=end

#There is also the .eql? method, which results in true only if both arguments have the same type and equal values.

puts 3 == 3.0 #True

# but 

puts 3.eql?(3.0) # false

# Lexicographically (the alphabetical order of words is based on the alphabetical order of their component letters)

a = "Nick"

b = "Mike"

puts a > b

# if statements end in "end"

a = 42

if a > 7
   puts "Greater indeed"
end

=begin
if expressions can be nested, one inside the other.
This means that the inner if is the code part of the outer one. This is one way to see whether multiple conditions are satisfied. Keep in mind that once an if condition fails, the entire block is exited.
=end

num = 18

if num == 18
   puts "Equal"
   if num > 17
      puts "Also Greater than 17"
   end
end

# The end keyword is only needed for the if statement, as the else block is part of the if expression.

num = 20

if num > 21
   puts "Great than 21"
else 
   puts "Less than 21"
end

num = 30

if num == 3
   puts "Equal to 3"
elsif num < 21
   puts "Greater than 21"
elsif num == 30
   puts "Equal to 30"
else 
   puts "Not equal 30, greater than 21, or equal 3"
end 

# The unless expression is the opposite of an if expression. It executes code when a conditional is false.

num = 90 

unless num != 90
   puts "Equal to 90"
end

num = 90

puts "Yes" if num > 80

puts "No" unless num < 80

=begin Logical operators are used to form more complex criteria that test more than one condition for an if expression.
Ruby has three logical operators: and (&&), or (||), and not (!).
=end

num = 50

if num > 40 && num < 60 
   puts "Inbetween 40 and 60"
end

=begin 
You can chain together multiple conditions with the logical operators to check for multiple conditions. Parentheses can be used to group together separate conditions for clarity and to control the order of operations. For example:
(a>b && b < 100) || (a<b && b > 100)
=end

=begin 
As we have seen in the previous lessons, we can check for multiple conditions using the if/elsif/else expression.
A more simplified and flexible option is the case expression, which tests a value in when statements.
=end

n = 8

case n
when 7
   puts "One"
when 6
   puts "Six"
when 8
   puts "Equal to 8"
end

# Case can be used with multiple values being tested

n = 8

case n 
when 1,2,3,4
   puts "First 4 numbers"
when 5,6,7,8
   puts "Last 4 numbers"
end

# else can be used with case as well 

n = 10

case n
when 1,2,3,4
   puts "Not a guy"
when 6,7,8,9
   puts "Not a girl"
when 5,11,12,13
   puts "Not a human"
else
   puts "Alien being"
end

=begin 
Loops are used to execute the same block of code a specified number of times.
The while loop executes a block of code while its condition is true.
=end

x = 0

while x < 100
   puts x
   x += 1
end

# The until loop is the opposite of a while loop: it will run while its condition is false.

a = 0

until a > 100
   puts "a = #{a}"
   a += 1
end

=begin
A range represents a sequence. 0 to 10, 56 to 82, and a to z are all examples of ranges.
Ruby has special operators to create ranges with ease.
These are the ''..'' and ''...'' range operators. The two-dot form creates an inclusive range, while the three-dot form creates a range that excludes the specified high value.
=end

n = (1..10).to_a 
puts n

n = (1...10).to_a
puts n

# can also use case and when statemnts with ranges

n = 10

case n
when 1..4
   puts "Not a guy"
when 6..9
   puts "Not a girl"
when 1...10
   puts "Not a human"
when 7..11
   puts "Alien being"
end

=begin
The for loop is a useful statement when you need to loop over a specific set of values, for example, a range.
The for loop consists of an empty variable and a range. At each iteration of the loop, the empty variable will be assigned the corresponding element of the range.
=end

for i in 1..10
   puts "i = #{i}"
end

#Break statements can be used to stop loops

for i in 1...1000
   puts "i = #{i}"
   break if i == 88
end

=begin 
Similarly, the next statement can be used to skip one iteration of the loop and continue with the next one.

*Ruby also has the redo statement, which causes the current loop iteration to repeat.
*The retry statement causes the whole loop to start again from the beginning.
=end

for m in (1..10)
   next if m %2 == 0
   puts "m = #{m}"
end

=begin
Another looping statement in Ruby is the loop do statement.
It allows code to execute until a break condition is achieved.
=end

x = 0 

loop do 
   puts "x = #{x}"
   x += 2
   break if x > 8
end

=begin 
An Array is essentially a list of numbered items.
The items are declared in a comma-separated list and enclosed in square brackets.
=end

items = ["Iphone", "Table", "Garden Hose"]

p items
# Each item has its own unique index with the first item at index zero.

items = ["Iphone", "Table", "Garden Hose"]

puts "Here are 2 items from my list #{items[0..1]}"

# can assign an element in an array a new value

items = ["Iphone", "Table", "Garden Hose"]
items[1] = "Desk"

puts "New item for index 1 = #{items[1]}"
puts "#{items}"

# arrays can contain different tpyes of elements, you can also add new elements to end of the array using << operator

arr = ["Nick", 19, 6.0, true]


puts arr[0]
puts arr[1]
puts arr[3]

arr << "Mike"

arr << false

puts "#{arr}"

# the push methdo adds an element to the end of the array 
arr = ["Nick", 19, 6.0, true]
p arr
arr.push "E3"
p arr 
# The pop method removes the last element of the array.

arr = ["Nick", 19, 6.0, true]
p arr
arr.pop
p arr

# use delete_at method to specify the index of the alement to be removed

arr = ["Nick", 19, 6.0, true]
p arr
arr.delete_at(2)

p arr

# You can access a range within an array using range operators .. and ...

arr = ["Nick", 19, 6.0, true]

p arr

p arr[1..3]
p arr[0...3]

# you can add arrays using + operator or subtract using - operator

a = [1,2,3,4]

b = [5,6,7,8]

c = a + b

p c

d = c - a

p d

# The & operator returns a new array containing the elements common to the two arrays, with no duplicates.

a = [1,7,3,3]

b = [5,1,9,7]

p a & b 

# The | operator returns a new array by joining the arrays and removing duplicates.

a = [1,3,4]

b = [3,5,4,1]

p b || a

=begin 
The reverse method returns a new array containing the original array elements in reverse order.
You can also reverse the array in place using the reverse! method

*If you use the reverse method without (!) and don’t save it to a new variable, it will just reverse it once and keep the original value.

=end

a = [1,2,3,4]

a.reverse # doesn't keep the values

p a

a.reverse! # keeps the values in variable
p a

=begin
Useful array methods:
array.length or array.size returns the number of elements in array.
array.sort returns a new array with the elements sorted
array.uniq returns a new array with duplicate values removed from array.
array.uniq! removes duplicates in place.
array.freeze safeguards the array, preventing it from being modified.
array.include?(obj) returns true if obj is present in array, false otherwise.
array.min returns the element with the minimum value.
array.max returns the element with the maximum value.
=end

=begin
Hashes (sometimes known as associative arrays, maps, or dictionaries) are similar to arrays in that they are an indexed collection of elements.
However, while you index arrays with integers, you can index a hash with anything.
That is very useful when you want to map values, for example: "name" => "David". Here, "name" is the index (also called the key) which is mapped to the value "David". So, hashes represent key=>value pairs.
A hash is created with comma separated keys and values inside curly brackets

*** Compared with arrays, hashes have one significant advantage: they can use any object as an index, even an array. For example: { [1,"jan"] => "January" }
=end

n = {"Name" => "Nick"}

puts n["Name"]
=begin
Symbols are similar to strings, but they are immutable, meaning that they cannot be changed.
A symbol is created using a colon and a name for example: a = :id

^^^^ In the code above :id is a symbol. You can also think of :id as meaning the name of the variable id, and plain id as meaning the value of the variable.

**** So why use symbols instead of strings? Using symbols not only saves time when doing comparisons, but also saves memory, because they are only stored once.

=end

n = {:name => "Nick", :age => 27, :gender => "male"}

puts n[:name]

n = {name:"Nick", age:27, gender:"male"}

puts n[:gender]

=begin
There are useful methods available for manipulating hashes:
hash.delete(key) removes the key-value pair from hash by key.
hash.key(value) returns the key for the given value in hash, nil if no matching value is found.
hash.invert creates a new hash, reversing keys and values from hash; that is, in the new hash, the keys from hash become values and values become keys.
hash.keys returns a new array with keys from hash.
hash.values returns a new array containing all the values of hash.
hash.length returns the length of hash as an integer.   
=end

car = {brand:"Audi", model:"S6", color:"Black", numofwheels:4}

car.delete(:numofwheels)

puts car.values

# Nested arrays

arr = [[[1],2,3], [4,5,6]]

puts arr[0][0][0]
puts arr[0][1]

cars = {
   BMW: {make: "M550i", color: "Saphire Blue", price: "$96,000"},
   Audi: {make: "RS7", color: "Space Gray", price: "$127,000"},
   Mercedes: {make: "E63 AMG", color: "British Racing Green", price: "$132,000"}
}

puts cars[:BMW][:make]

=begin
Ruby provides more elegant looping methods called iterators. Iterators are used to create loops.
The each iterator is one of the most used ones:
=end

names = ["Nick", "Mike", "Chris", "Tomas"]

names.each do |x| # <------ block paramenter which takes form of the variables being itterated over
   puts x
end

=begin
The syntax might seem confusing at first, but you just need to remember the pipe symbols around the variable. The each iterator loops through all elements of the array and assigns the corresponding element to the variable inside the pipes with each iteration. This variable is called the block parameter.
=end

cars = {
   BMW: {make: "M550i", color: "Saphire Blue", price: "$96,000"},
   Audi: {make: "RS7", color: "Space Gray", price: "$127,000"},
   Mercedes: {make: "E63 AMG", color: "British Racing Green", price: "$132,000"}
}

cars.each do |key, value|
   puts "#{key}=>#{value}"
end

=begin 
In the example above, key and value are variables that get assigned to the corresponding values of the hash elements at each iteration. You can use any name for your variables.

The do and end keywords specify a block of code in Ruby.
After the opening of the block, we have the block parameters within pipes ( | | ).
Ruby provides a shorthand way of writing blocks: you can use curly braces to start and end code blocks.
=end

cars = {
   BMW: {make: "M550i", color: "Saphire Blue", price: "$96,000"},
   Audi: {make: "RS7", color: "Space Gray", price: "$127,000"},
   Mercedes: {make: "E63 AMG", color: "British Racing Green", price: "$132,000"}
}

cars.each {|key, value| puts "#{key}:#{value}"}

# The each iterator can also be used on ranges.
# For strings, you can use the each_char iterator to iterate over the characters.

=begin 
There are also iterators available for numbers.
The times iterator executes a loop the specified number of times
=end

2.times do
   puts cars[:BMW]
end

# Letter Frequency, count the frequency of letters (number of occurrences) first we lower the case of the string to easily match letters with

text = " I am learning Ruby, and it's similar yet differnet to Python"

text.downcase!

# next create the hash that will hold the letters using the  default method which is used to set the default value for the hash, meaning that any key that does not have a value assigned will be set to that value.

freqs = {}
freqs.default = 0

# now we need ot iterate over each character in the string and calculate the number of occurrences in the has. We can use each_char iterator

text.each_char  { |char| freqs[char] += 1}

("a".."z").each {|x| puts "#{x} : #{freqs[x]}" }

=begin 
In the previous lessons we have seen some examples of methods, such as the reverse method for arrays.
A method is a set of statements that perform a specific task.
You can define your own methods to perform your desired tasks.
The def keyword is used to define a method.

*** The method name should start with a lowercase letter, so it will not be confused with constants.

=end

def say
   puts "Hi"
end


# A method declaration can include parameters, which you define inside parentheses after the method name. The parameter value itself is called an argument

def add(x)
   puts x+x
end

add(2)

def add(x,y)
   puts x+y
end

add(2,5)

def add(x=7,b)
   puts x+b
end

b = 3 

add(b)

def add x, h=8
   puts x+h
end

x = 2

add(x)

# can also define methods to take any number of arguments using * if nothing is put into the argument for the * parameter than it will return nothing, this is also known as an optional parameter 

def say(*p)
   puts p
end

say("Nick", 7.0, 2)

=begin 
Return keyword is use to return a value from a method
*** Any code in the method after a return statement will not execute, because a method stops executing once the return is executed.
=end
def sum(a,b)
   res = a+b
   return res 
end

x = sum(5,24)

puts x

# you can also define multiple returns

def sum(a,b,c)
   return a*a, b*b, c*c
end

arr = sum(3,4,5)

puts arr


# Even when you do not explicitly include a return statement in your method, Ruby always returns the evaluated result of the last line of the method that is executed.

def demo(a, b)
   a = a-3
   b = b-3
end

puts demo(5,6)

# you can chain methods together
x = 7

def sum(a)
   a+a
end
sum(2).times {puts sum(x)}

# Can also pass methods as arugments to other methods

def sum(a,b)
   a+b
end

def mult(a,b)
   a*b
end

x = mult(sum(2,3),sum(1,4))
puts x


=begin
Variable Scope:
Scope defines where in a program a variable is accessible.
Ruby has four types of variable scope: local, global, instance and class.

Local variables are local to the code construct in which they are declared. For example, a local variable declared in a method or within a loop cannot be accessed outside of that loop or method. Local variable names must begin with either an underscore or a lowercase letter.
=end

def sum(b)
   a = 2 # <--- Local variable, lives within in the method and cannot be called outside it
   puts a*b
end

=begin
   Global variables in Ruby are accessible from anywhere in the Ruby program, regardless of where they are declared. Global variable names are prefixed with a dollar sign ($).

   *** Use of global variables is strongly discouraged. The problem with global variables is that, not only are they visible anywhere in the code, but they can also be changed from anywhere in the application. This can result in hard to find bugs.
=end

$globalvar = 4 # This is a global Variable

def change
   $globalvar = 3 # Global variable is changed here
end

change
puts $globalvar


=begin
A classic example of a method that is implemented recursively is the factorial method, which finds the product of all positive integers below a specified number.
For example, 5! (5 factorial) is 5 * 4 * 3 * 2 * 1 (120). To implement this recursively, notice that 5! = 5 * 4!, 4! = 4 * 3!, 3! = 3 * 2!, and so on. Generally, n! = n * (n-1)!.
Furthermore, 1! = 1. This is known as the base case, as it can be calculated without performing any more factorials.
=end 

def fact(n)
   if n <= 1 
      1
   else
      n * fact(n - 1)
   end
end

puts fact(4)



