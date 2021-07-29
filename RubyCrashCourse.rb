# Ruby ignores whitespaces in expressions unless they’re a part of a string. For example, an expression like 5 + 5 is the same as 5+5 and would be interpreted as such.
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


=begin
You can think of classes as basic outlines of what an object should be made of and what it should be able to do. (For example, an object of class Car should have a color, make and model, and be able to move).
A class in Ruby always starts with the keyword class followed by the name of the class. The name should always be in initial capitals. You terminate the class definition with the keyword end.

There is a special initialize method available for classes which gets called when an object is created.

The purpose of the initialize method is to initialize the class variables for a new object. (For example, when a Car object is created, the initialize method could set the number of tires to the value 4)

*** The initialize method is known as the constructor in other object-oriented programming languages.

=end

class Person
   def initialize
      puts "Hi There"
   end
end

=begin
After the class and the initialize methods are defined, we can create objects of that class by using the new method. The method new is predefined in the Ruby library and does not need to be added to your class definition.
=end

class Person
   def initialize
      puts "Hi There"
   end
end

p1 = Person.new
p2 = Person.new

=begin Objects are also called instances of a class. The process of creating objects of a class is called instantiation.


*** Note that in computing objects aren't always representative of physical items. For example, a programming object can represent a date, a time, and a bank account.
=end

=begin 
An instance variable is one type of variable defined in a class.
Each object of a class has a separate copy of the instance variables.
Instance variables are preceded by the at sign (@) followed by the variable name (for example: @name)
We can, for example, pass a parameter to the initialize method and assign it to an instance variable for a new object:
=end

class Person
  def initialize(name)
   @name = name
  end
end

p1 = Person.new("Nick")
p2 = Person.new("Mike")

=begin 
*** You might wonder why we don't use local variables instead of instance variables. We need instance variables because their scope is the entire object, meaning that they are accessible inside all the methods for the object, opposed to local variables, which are accessible only within the scope they are declared, such as a single method.
=end

# A class can multiple instance variable

class Car
   def initialize(brand, model, year)
      @brand = brand
      @model = model
      @year = year 
      puts "#{brand}, #{model}, #{year}"
   end
end

c1 = Car.new("BMW", "M550i", 2021)
c2 = Car.new("Audi", "RS7", 2021)

=begin
In the real world, objects behave in their own way. A car moves, a phone rings, and so on.
The same applies to programming objects. Behavior is specific to the object's type and is defined by methods in the class.
You can declare instance methods that are available to an object of the class.
=end

class Car
   def initialize(brand, model, year)
      @brand = brand
      @model = model
      @year = year
   end
    def readout
       @brand
    end
end

c1 = Car.new("BMW", "M550i", 2022)
c2 = Car.new("Mercedes", "E63 AMG", 2021)

puts c1.readout
puts c2.readout

=begin 
Getter methods are used to access the instance variable. If we want to change the value of the instance variables, we need setter methods.
Ruby provides a special syntax for defining setter methods: the method name is followed by an equal sign (=).
=end

class Car
   def initialize(brand, model, year)
      @brand = brand
      @model = model
      @year = year
   end
   def set_name=(model)
      @model = model
   end
    def readout
       print "#{@brand} #{@model} #{@year}"
    end
end

c1 = Car.new("BMW", "M550i", 2022)
c2 = Car.new("Mercedes", "E63 AMG", 2021)

puts c1.readout
c1.set_name = "M5"
puts c1.readout

# When you see this code, just realize there's a method called set_name= working behind the scenes.

=begin 
Ruby has a built-in way to automatically create these getter and setter methods using the attr_accessor method.
The attr_accessor method takes a symbol of the instance variable name as an argument, which it uses to create getter and setter methods.
=end

class Car
   attr_accessor :model 

   def initialize(model)
      @model = model
   end
end

c = Car.new("M5")
c.model = "M550i"
puts c.model

=begin 
That one line replaced two accessor method definitions.
Ruby also provides the attr_reader and attr_writer methods in case only a getter or setter method is needed for the instance variable.

*** We can pass multiple symbols to the attr_accessor, attr_reader and attr_writer methods. For example: attr_accessor :name, :height, :weight
=end 

=begin
Class methods are methods we can call directly on the class itself, without having to instantiate any objects.
This can be useful when there is no logical need to create an object of the class, such as when a class is used to group similar methods and functionality (like mathematical operations).

*** Remember, when used inside of instance methods, self is representing the current instance (object) of that class.
When defining class methods, self is referring to the class itself, and not to an instance of the class.


=end 

class Car
   def self.info
      puts "A car"
   end
end

Car.info

=begin
Class variables are accessible to every object of a class. A class variable belongs to the class, not the objects.
You declare a class variable using two @ signs, for example @@name.

*** Class variables are usually used when you need information about the class, not the individual objects.

=end

class Car
   @@count = 0
   def initialize
      @@count += 1
   end
   def self.get_count
      @@count
   end
end

c1 = Car.new
c2 = Car.new

puts Car.get_count 

=begin 
A class can also contain constants. Remember, constant variables do not change their value and start with a capital letter. It is common to have uppercase names for constants

You can access constants using the class name, followed by two colon symbols (::) and the constant name
=end

class Calc
   PI = 3.14
end

puts Calc::PI

=begin
The to_s method comes built-in with all classes. It gets called when you output the object

When we call puts p, Ruby automatically calls the to_s method for the object p, so puts p is the same as puts p.to_s

*** By default, the to_s method prints the object's class and an encoding of the object id.
=end


class Car
   #some code
end

c = Car.new
puts c

=begin 
We can define our own to_s method for a class and add custom implementation to it.

*** Defining the to_s method makes it easier and shorter to output the information of an object in the format needed, as opposed to defining a custom method and calling it from an object.
When you define the to_s method you call puts on your object (puts obj), where with a custom method you have to explicitly call it from the object (puts obj.info).
=end 

class Car
   def initialize(make, model, year)
      @make = make
      @model = model
      @year = year
   end
   def to_s
      "The make is a #{@year}, #{@make}, model #{@model}"
   end
end

c = Car.new("Audi", "RS7", 2022)
puts c

=begin 
Inheritance is when a class receives, or inherits, attributes and behavior from another class. The class that is inheriting behavior is called the subclass (or derived class) and the class it inherits from is called the superclass (or base class).

*** The < symbol is used to inherit a class from another class.
=end

class Car
   def initialize(model, year)
      @year = year
      @model = model 
   end
   def readout
      puts "Your model is #{@model}, year #{@year}"
   end
end

class BMW < Car
end

c = BMW.new("M550i", 2022)
c.readout

# BMW inehrits the readout method, but has it's own method of engine and attribute(instance variable) of body type

class Car
   def initialize(model, year)
      @model = model
      @year = year
   end
   def readout
      puts "Your model is #{@model}, year #{@year}"
   end
end

class BMW < Car
   attr_accessor :body_type
   def engine
      if @model == "M550i"
         puts "N63 4.4L V8"
      elsif @model == "M5"
         puts "S63 4.4.L V8"
      end
   end
end

c = BMW.new("M550i", 2022)
c2 = BMW.new("M5", 2022)
c.body_type = "Sedan"
c.engine
c2.engine

=begin 
Inheritance is a great way to remove duplication in your code by writing the shared and common functionality in the superclass and then adding individual functionality in the subclasses.
You can have multiple levels of inheritance

*** However, Ruby does not support multiple inheritance, meaning you cannot inherit a class simultaneously from multiple classes. (A class cannot have multiple superclasses)
=end

class Car
end
class BMW < Car
end
class M550i < BMW
end


=begin
Ruby has a built-in method called super, which is used to call methods from the superclass.
When you call super in a method of the subclass, the method of the same name gets called from the superclass.
=end

class Car
   def initialize(model, year)
      @model = model
      @year = year
   end
    def engine
      puts "Random Engine"   
   end
end

class BMW < Car
   def engine
      super
      if @model == "M550i"
         puts "N63 4.4L V8"
      elsif @model == "M5"
         puts "S64 4.4L V8"
      end
   end
end

c = BMW.new("M550i", 2022)
c.engine

=begin
super is more commonly used in the initialize method.

*** In the example we used super for a simple assignment. Imagine having a complex program with complex calculations and operations being carried out. That's where the real benefits of "not repeating yourself" come in, and calling the super where applicable is one way of achieving it.
=end


class Car
   def initialize(model)
      @model = model
   end
end

class BMW < Car
   def initialize(model, year)
      super(model)
      @year = year
   end
   def to_s
      "#{@model}, and year #{@year}"
   end
end

c = BMW.new("M550i", 2022)
puts c


=begin 
To control visibility, Ruby provides the public, private, and protected access modifiers.
By default, all class methods (except initialize) are public, meaning that they are accessible from both inside and outside of the class.
To make a method accessible only from inside the class, we can use the private access modifier

*** When the reserved word private is used in a program, anything below it in the class is private (unless public or protected is placed after it to negate it).
Access modifiers can be applied only to methods. Instance variable are always private.
=end

class Car
   def initialize(make, model)
      @model = model
      @make = make
   end
   def show 
      puts "Model is #{@model}, make is #{@make}, and engine is #{engine}"
   end

   private
   def engine
      if @model == "M550i"
         @model = "N63 4.4L V8"
      end
   end
end

c = Car.new("BMW", "M550i")
c.show

=begin 
Another way of grouping methods together are modules.
A module is a collection of methods that can be used in other classes (think about them as libraries providing common functionality).
Modules are defined using the module keyword followed by the module name, which should start with a capital letter.

use the include method to add in modules into classes

*** A common naming convention for Ruby is to use the "able" suffix on whatever verb describes the behavior that the module is modeling, like Walkable, Swimmable, Runnable, etc.
Not all modules are named in this manner, however, it is quite common.

=end


module V8
   def engine
   puts "These Cars got V8's"
   end
end

class Vehicles
end

class M_550i < Vehicles
   include V8
end

class M_5 < Vehicles
   include V8
end

class M340i < Vehicles
end

c = M_550i.new
c.engine


=begin 
As you may recall, Ruby does not allow a class to inherit from multiple classes.
However, a class can mix in multiple modules. Modules used this way are known as "mixins".
So, basically, a class can have multiple mixins

*** Mixins give you a great, controlled way of adding functionality to classes.

It is important to remember the following:
1. You can only inherit from one class. But you can mix in as many modules as you'd like.

2. If it's an "is-a" relationship, choose class inheritance. If it's a "has-a" relationship, choose modules. Example: a plane "is a" vehicle; a plane "has an" ability to fly.

3. You cannot instantiate modules (i.e., an object cannot be created from a module).
Modules are used only for grouping common methods together.
Classes are about objects; modules are about methods.

The true power of mixins comes out when the code in the mixin starts to interact with code in the class that uses it. Ruby has a number of predefined mixins ready for you to use.
Let's take the standard Ruby mixin Comparable as an example. The Comparable mixin can be used to add the comparison operators (<, <=, ==, >=, and >) to a class.
For this to work, Comparable assumes that any class that uses it defines the operator <=>.
So, as a class writer, you define the one method, <=>, include Comparable, and get six comparison functions as a result!
Let's try this with our Cat class, by making the cats comparable based on their age.

=end 

class Cat
   attr_accessor :name, :age
   include Comparable
   def initialize(n, a)
       self.name = n
       self.age = a
   end
   def <=>(other)
       self.age <=> other.age
   end
end

c1 = Cat.new("Bob", 3)
c2 = Cat.new("Lucy", 7)

puts c1 < c2

=begin
You can use namespacing to organize similar classes in module 

We can call classes in the module by appending the class name to the module name with two colons(::)

*** The advantages of namespacing classes:
It becomes easy for us to recognize related classes in our code.
It reduces the likelihood of our classes colliding with other similarly named classes in our code. We can have the same class names across different modules.
=end

module Mammal
   class Dog
       def speak
           puts "Woof!"
       end
   end

   class Cat
       def speak
           puts "Meow"
       end
   end
end

a = Mammal::Dog.new
b = Mammal::Cat.new

a.speak
b.speak


=begin
Another use for modules is as containers for methods.

The code above defines a module called MyMath, which includes a constant called PI, and three class methods. The methods inside a module are defined as class methods (note the self keyword), and we call them using the dot syntax.
You can call the methods using two colon syntax (::) as well (MyMath::factorial(8)), but the dot syntax is preferred.

*** Again, the advantages of using modules to group methods includes preventing name collisions, meaning that we can have the same method names across multiple modules.
=end


module MyMath
   PI = 3.14
   def self.square(x)
       x*x
   end
   def self.negate(x)
       -x
   end
   def self.factorial(x)
        (1..x).inject(:*) || 1
   end
end

puts MyMath.factorial(8)

=begin
In some cases, there is no need for defining a fully structured class. Sometimes we need just a group of attributes bundled together (for example, defining points in a 2D space using x and y coordinates).
We could, of course, create a separate class with all the instance variables and methods, but Ruby provides a shortcut to bundle a number of attributes together called a Struct


In the code below, Point is a Struct, having two attribute accessors: x and y. Struct automatically creates its initialize method for the defined accessors, so now we can use Points just like a class, instantiating different objects from it.



*** Struct is a built-in Ruby class and makes it shorter to define simple classes, accessors, and their initialize methods.
=end

Point = Struct.new(:x, :y)

origin = Point.new(0,0)
dest = Point.new(15, 42)

puts dest.y

=begin 
OpenStruct (or OStruct) acts very similarly to Struct, except that it doesn't have a defined list of attributes.
To use OStruct, we need to include the corresponding library using the require statement.

*** OStruct isn't as fast as Struct, but it is more flexible.
=end 

require "ostruct"

person = OpenStruct.new
person.name = "John"
person.age = 42
person.salary = 250

puts person.name

=begin 
We can also initialize an OStruct using a hash.

Struct and OStruct provide a simple way to create data structures that have the behavior of a class.
=end

require "ostruct"

person = OpenStruct.new(name:"John", age:42, salary:250)

puts person.name

=begin 
Ruby provides a number of standard built-in classes that make our life a lot easier by providing useful methods for manipulating data.
Some of the classes in previous lessons include Array, String and Struct.
Another useful class is the Math class, which provides methods to perform mathematical operations.
=end

#square root
puts Math.sqrt(9)

#pi constant
puts Math::PI

#trigonometry (sin, cos, tan)
puts Math::cos(0)


# The Time class represents dates and times in Ruby.

#current time
t = Time.now
puts t.inspect

#year, month, day
puts t.year
puts t.month
puts t.day

#custom date
t = Time.new(1988, 6, 10)

#day of week: 0 is Sunday
puts t.wday

#day of year
puts t.yday

=begin 
Ruby provides the ability to take a block of code, wrap it up in an object (called a proc), store it in a variable, and run the code in the block whenever you feel like (more than once, if you want).

We created a Proc that takes a parameter and outputs a greeting, and assigned it to the greet variable.
We run the code in the proc using the call method.

*** The code between the do and end keywords can include any number of operations.
=end 

greet = Proc.new do |x|
   puts "Welcome #{x}"
end

greet.call "David"
greet.call "Amy"

=begin
Procs are very similar to methods. They perform operations and can include parameters.
What make Procs really powerful and unique is the ability to pass them into methods, because procs are actually objects.

We have defined two procs and a method, that takes an array and a proc as its parameters. For each item in the array it calls the proc. Now, greet and goodbye are objects that contain the corresponding blocks of code.
We can call the say method and pass our proc objects as parameters

We can pass to our methods as many procs as we want.

*** Using procs gives the added flexibility to be able to reuse code blocks in more than one place without having to type them out every time. Procs basically take blocks of code and embed them in an object, allowing them to be reused and passed around.

=end

greet = Proc.new do |x|
   puts "Welcome #{x}"
end

goodbye = Proc.new do |x|
   puts "Goodbye #{x}"
end

def say(arr, proc)
   arr.each { |x| proc.call x}
end
   
people = ["David", "Amy", "John"]
say(people, greet)
say(people, goodbye)

=begin 
Let's create a program that counts the execution time of a block of code.
With that tiny calc method, we can now easily calculate the execution time of any Ruby code!
=end

def calc(proc)
    start = Time.now
    proc.call
    dur = Time.now - start
end

someProc = Proc.new do
    num = 0
    1000000.times do
      num = num + 1
    end
end

puts calc(someProc)

=begin 
Lambdas are a variation of Procs. A lambda is actually an instance of the Proc class.

*** In other programming languages, a lambda is commonly referred to as an anonymous function.

Lambdas as very similar to procs. However, there are some important differences.
The first difference between procs and lambdas is how arguments are handled.
Lambdas check the number of arguments, while procs do not.

When a lambda expects an argument, you need to pass those arguments or an Error will occur. However, in the case of the Proc, if the argument is not passed it automatically defaults to nil.

*** A second difference between a lambda and a Proc is how the return statement is handled.
When a lambda encounters a return statement it returns execution to the enclosing method.
However, when a Proc encounters a return statement it jumps out of itself, as well as the enclosing method.


=end 

# Alternative syntax: talk = ->() {puts "Hi"}
talk = lambda {puts "Hi"}
talk.call

talk = lambda { |x| puts "Hello #{x}" }
talk_proc = Proc.new { |x| puts "Hello #{x}" }

talk.call "David"
talk_proc.call "Amy"


=begin 
A more permanent form of input and output is files.
Ruby allows us to easily create and work with files by using the built-in File class.

The code below creates a file named "test.txt" with the mode w+ for read and write access to the file.
Note that the file will be created in the same directory as our program.
Now we can use our file object to perform different operations. After using a file, it must be closed using the close method

*** It is necessary to close open files so they no longer continue to occupy space in memory.
=end 

# file = File.new("test.txt", "w+")

# file.close

=begin
Ruby supports the following file modes:
r read-only, starts at beginning of file (default mode).
r+ read-write, starts at beginning of file.
w write-only, truncates existing file to zero length or creates a new file for writing.
w+ read-write, truncates existing file to zero length overwriting existing data or creates a new file for reading and writing.
a write-only, appends to end of file if file exists, otherwise creates a new file for writing.
a+ read-write, appends or reads from end of file if file exists, otherwise creates a new file for reading and writing.

*** When the open mode is read only, the mode cannot be changed to writable. Similarly, the open mode cannot be changed from write only to readable.
=end

# How to open existing files

file = File.open("filename", "w+") 

=begin 
The puts and write methods can be used for writing content to a file.
The difference between the two is that puts adds a line break to the end of strings, while write does not.

*** Remember to close the file after performing the file operations.
=end

file = File.new("test.txt", "w+")
file.puts("some text")
file.close

=begin
If we want to write to an existing file, we can use a block of code to perform the write operation.
With this code Ruby will automatically close the file.

*** This shorter way makes sure the file closes at the end of the block.

=end

File.open("test.txt", "a+") {
   |file| file.puts("I know Ruby!!") 
 }


# To read the entire contents of a file the File.read method can be used.

puts File.read("test.txt")


f = File.new("a.txt", "w+")
f.puts("1")
f.write("2")
f.puts("3")
f.close
puts File.read("a.txt")

=begin
We can also read the file contents line-by-line using the readlines method.

*** The readlines method reads the entire file based on individual lines and returns those lines in an array.
=end

File.open("test.txt", "a+") {
   |file| file.puts("a line of text")
   file.puts("another line of text")
}

File.readlines("test.txt").each { |line|
   puts " --- #{line}"
}

=begin
We can delete a file using the File.delete method.

*** Be careful, as this command deletes the file permanently.
=end 

File.delete("test.txt","a.txt")


=begin 
When working with files, it is important to first check if the file exists in order to prevent an error.
The file? method provides an easy way of checking if the file exists.

*** File.file? returns true if the file exists, and false if it does not.
=end

File.open("test.txt") if File.file?("text.txt")

puts File.file?("test.txt")

=begin 
Ruby provides some useful methods to get relevant information about a file.
The size method returns the size of the file.
The zero? method returns true if the named file exists and has a zero size (is empty).
=end

f = File.new("test.txt", "w+")
f.puts("some file content")

puts f.size

f.close

puts File.zero?("test.txt")

File.delete("test.txt")

# We can also check whether the file is writable, readable or executable
f = File.new("test.txt", "w+")
f.puts("some content")
f.close

puts File.readable?("test.txt")
puts File.writable?("test.txt")
puts File.executable?("test.txt")

File.delete("test.txt")

=begin 
Ruby comes with a built-in HTTP client net/http that can be used to send any kind of HTTP request you may need. You need to require the net/http client to work with it
=end 
require 'net/http'
http_response = Net::HTTP.get_response('www.google.com', '/')
puts http_response.code