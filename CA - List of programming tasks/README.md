# 4 Year - Theory of Algorithms


## CA 2018
The following exercises should be completed in the Racket programming language.
Remember to plan your work and make regular commits to your repository. The instructions for submitting your work are given on the Moodle page. Note that “from scratch” means using only cons, car, cdr, define, lambda, if, null, null?, cond, map, = and the basic numerical operators (+, -, *, /, modulo). Other basic functions may be allowed, but please confirm their use with the lecturer.

### 1. Write, from scratch, a function in Racket that uses a brute-force algorithm that takes a single positive integer and return true if the number is a prime and false otherwise. Call the function decide-prime.

Racket code
```racket
#lang racket

(define (decide-prime p) 
    (print p)
        (define (non-divisible-by n d) ; anothe function, receive two values
            (cond
            ((= d 1) (println " True")) ; The value just can by one or himself
            (else (if(= (remainder n d) 0) 
                (println " False") ; Value remain 0, the value can divide by another numbers
                (non-divisible-by n (- d 1)))))) 
            (if (= p 1)
                (println " True for number 1") ; If prime is equal one
                (non-divisible-by p (- p 1))))

(for ([p (in-range 10)]) ; iterator, in-range will the total number to in the loop
  (decide-prime p)) ; Pass the value to metho to the top
```
Output for 10 Numbers
```
0" False"
1" True for number 1"
2" True"
3" True"
4" False"
5" True"
6" False"
7" True"
8" False"
9" False"
```


### 2. Write, from scratch, a function in Racket that takes a positive integer n0 as input and returns a list by recursively applying the following operation, starting with the input number.

![Screencast](Screenshot/CA2018_2.png)

End the recursion when (or if) the number becomes 1. Call the function collatz-list.
So, collatz-list should return a list whose first element is n0, the second element
is n1, and so on. For example:
```
> (collatz-list 5)
'(5 16 8 4 2 1)

> (collatz-list 9)
'(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)

> (collatz-list 2)
'(2 1)
```

### 3. Write, from scratch, two functions in Racket. The first is called lcycle. It takes a list as input and returns the list cyclically shifted one place to the left. The second is called rcycle, and it shifts the list cyclically shifted one place to the right.

For example:
```
> (lcycle (list 1 2 3 4 5))
'(2 3 4 5 1)

> (rcycle (list 1 2 3 4 5))
'(5 1 2 3 4)
```

### 4. Write a function sublsum in Racket that takes a list (of integers) as input and returns a list of sublists of it that sum to zero. For this problem, you can use the combinations built-in function. Note the order of the sublists and their elements doesn’t matter. 

For example:
```
> (sublsum (list 1 2 3 4 -5))
'((2 3 -5) (-5 1 4))

> (sublsum (list 1 2 3 4 5))
'()
```

### References: 
- PLT Inc. Racket – a programmable programming language.
- https://rosettacode.org/wiki/Category:Programming_Tasks
- https://ianmcloughlin.github.io/theoryofalgorithms
- https://stackoverflow.com/questions/3345626/finding-a-prime-number-in-scheme-using-natural-recursion
- https://beautifulracket.com/explainer/loops.html
- https://docs.racket-lang.org/guide/for.html

# Author

### Alexander Souza
- G00317835@gmit.ie
- alexpt2000@gmail.com
- https://github.com/alexpt2000gmit
- https://github.com/alexpt2000
- www.linkedin.com/in/alexander-souza-3a841539/