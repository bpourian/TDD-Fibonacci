# TDD Fibonacci Kata

This is the famous Fibonacci Kata which I had previously completed without TDD.
I was bored and wanted to code I built this. However, in this app I have introduce a dynamic programming approach called 'memorisation'.

The idea is that if the program is used in a repl like `irb`, the value of the solutions will be stored in memory. Therefore as the range of numbers given increases the program doesn't have to compute all the calculations which it has already saved. This technique is generally used to optimise performance.

Build Language and tools
------
• Ruby 2.4.1
• RSpec
• Rubocop
• Simplecov

Usage and demo
-----
In terminal type `irb`:
```
2.4.1 :001 > require './lib/fibonacci.rb'
 => true
2.4.1 :002 > fib = Fibonacci.new
 => #<Fibonacci:0x007fbbad0875d0>
2.4.1 :003 > fib.fibo(4)
"Creating new array as no fibonacci in memory"
 => "1 ,1 ,2 ,3"
2.4.1 :004 > fib.fibo(4)
"Retrieving existing fibonacci from memory"
 => "1 ,1 ,2 ,3"
2.4.1 :005 > fib.fibo(10)
"Adding fibonacci to existing array and returning"
 => "1 ,1 ,2 ,3 ,5 ,8 ,13 ,21 ,34 ,55"
2.4.1 :006 > fib.fibo(5)
"Retrieving existing fibonacci from memory"
 => "1 ,1 ,2 ,3 ,5"
2.4.1 :007 >
```
