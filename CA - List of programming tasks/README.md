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


## 2. Write, from scratch, a function in Racket that takes a positive integer n0 as input and returns a list by recursively applying the following operation, starting with the input number.

![Screencast](Screenshot/CA2018_2.png)

End the recursion when (or if) the number becomes 1. Call the function collatz-list.
So, collatz-list should return a list whose first element is n0, the second element
is n1, and so on. For example:

Racket code
```racket
#lang racket

(define (collatz-list n)
  (cond
  ((= n 1) '(1))((even? n)
  (cons n (collatz-list (/ n 2))))
    (else
      (cons n 
        (collatz-list (+ (* 3 n) 1))))))
```
Output
```racket
> (collatz-list 5)
'(5 16 8 4 2 1)

> (collatz-list 9)
'(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)

> (collatz-list 2)
'(2 1)
```

## 3. Write, from scratch, two functions in Racket. The first is called lcycle. It takes a list as input and returns the list cyclically shifted one place to the left. The second is called rcycle, and it shifts the list cyclically shifted one place to the right.

Racket code - lcycle
```racket
#lang racket

(define (my-append list1 list2)
  (if (null? list1)
      list2
      (cons 
        (car list1) (my-append (cdr list1) list2))))


(define (lcycle list)
  (if (null? list)
      '()
      (my-append 
          (cdr list)
            (cons (car list)
              '()
                  ))))
```
Output
```racket
> (lcycle (list 1 2 3 4 5))
'(2 3 4 5 1)
```


Racket code - rcycle
```racket
#lang racket

(define (remove_last lst)
  (if(null? (cdr lst))
     null
     (cons (car lst) (remove_last (cdr lst)))))

(define (last_element l)
    (cond
      [(null? (cdr l)) (car l)]
      [else (last_element (cdr l))]))

(define (rcycle liste)
  (cons (last_element liste) (remove_last liste)))

```
Output
```racket
> (rcycle (list 1 2 3 4 5))
'(5 1 2 3 4)
```

### 4. Write a function sublsum in Racket that takes a list (of integers) as input and returns a list of sublists of it that sum to zero. For this problem, you can use the combinations built-in function. Note the order of the sublists and their elements doesn’t matter. 

Racket code
```racket
#lang racket

(define (sumList l)
 (if(null? l) 0 
   (+ (car l)(sumList (cdr l)))))

(define (sublsum l)
  (for ([i (combinations l)])
    (if (= (sumList i) 0)
        (println i)
        '()
    )))

```

Output
```racket
> (sublsum (list 1 2 3 4 -5))
'()
'(2 3 -5)
'(1 4 -5)


> (sublsum (list 1 2 3 4 5))
'()
```

### 5. Write a function hamming-weight in Racket that takes a list l as input and returns the number of non-zero elements in it. 

Racket code
```racket
#lang racket

(define (hamming-weight l) 
        (if (null? l)
            0
            (+ (car l) (hamming-weight (cdr l)))
            ))

```

Output
```racket
> (hamming-weight (list 1 0 1 0 1 1 1 0))
5
```

### 6. Write a function hamming-distance in Racket that takes two lists and returns the number of positions in which they differ. 

Racket code
```racket
#lang racket

(define (hamming-distance lst1 lst2)               
  (cond ((null? lst1) (null? lst2) 0)                     
        ((not(= (car lst1) (car lst2)))                  
         (+ 1 (hamming-distance (cdr lst1) (cdr lst2))))  
        (else(hamming-distance (cdr lst1) (cdr lst2)))))  

```

Output
```racket
> (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
5

```


### 7. Write a function maj in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing a 1 where two or more of x, y and z contain 1’s, and 0 otherwise. For example:

Output
```racket
> (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 0 0 1 0 1 1 1)
```



### 8. Write a function chse in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing the elements of y in the positions where x is 1 and the elements of z otherwise. For example:


Output
```racket
> (chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 1 0 1 0 0 1 1)
```


### 9. Write a function sod2 in Racket that takes three lists x, y and z of equal length and  containing only 0’s and 1’s. It should return a list containing a 1 where the number of 1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise.

Output
```racket
> (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 1 1 0 1 0 0 1)
```



### 10. Write a function lstq in Racket that takes as arguments two lists l and m of equal length and containing numbers. It should return d, the distance given by the sum of the square residuals between the numbers in the lists:

![Screencast](Screenshot/CA2018_10.png)

This means take the ith element of m from the ith element of l and square the result
for all i. Then add all of those to get d.


Racket code
```racket
#lang racket

(define (lstq l m)                                     
  (cond ((null? l)(null? m) 0)                         ;verify if list are empty and outputs 0
        ((+ (* (- (car l)(car m))(- (car l)(car m)))   ;squares each element and sums
           (lstq (cdr l)(cdr m))))))   

```

Output
```racket
> (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
54.61

```

### References: 
- PLT Inc. Racket – a programmable programming language.
- https://rosettacode.org/wiki/Category:Programming_Tasks
- https://ianmcloughlin.github.io/theoryofalgorithms
- https://stackoverflow.com/questions/3345626/finding-a-prime-number-in-scheme-using-natural-recursion
- https://beautifulracket.com/explainer/loops.html
- https://docs.racket-lang.org/guide/for.html
- https://plt.eecs.northwestern.edu/snapshots/current/pdf-doc/guide.pdf

# Author

### Alexander Souza
- G00317835@gmit.ie
- alexpt2000@gmail.com
- https://github.com/alexpt2000gmit
- https://github.com/alexpt2000
- www.linkedin.com/in/alexander-souza-3a841539/