#lang racket

(define (sod2 x y z)
  (cond [(null?  x) '()]                                ;if any lists are empty, if empty returns '() 
    [(null?  y) '()]
    [(null?  z) '()]
    [else
      (if(=(modulo (+ (car x)(car y)(car z)) 2) 0)      ;if sum of first elements divided by 2 equals zero, than is even                  
             (cons 0 (sod2 (cdr x)(cdr y)(cdr z)))      ;to even add 0 to new list  
             (cons 1 (sod2 (cdr x)(cdr y)(cdr z))))]))  ;to odd add 1 to new list 


(sod2 (list 0 0 0 0 1 1 1 1)(list 0 0 1 1 0 0 1 1)(list 0 1 0 1 0 1 0 1)) 






