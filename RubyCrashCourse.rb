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


