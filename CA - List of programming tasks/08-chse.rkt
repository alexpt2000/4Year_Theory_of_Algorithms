#lang racket

(define (chse x y z)
  (cond [(null?  x) '()]                                  ;checks if any lists are empty, if yes, returns '()
    [(null?  y) '()]
    [(null?  z) '()]
    [else
      (if(= 1 (car x))                                    ;if element in list x is 1
         (cons (car y)(chse (cdr x)(cdr y)(cdr z)))       ;adds element from y to new list 
         (cons (car z)(chse (cdr x)(cdr y)(cdr z))))]))   ;adds element from z to new list 



(chse (list 0 0 0 0 1 1 1 1)(list 0 0 1 1 0 0 1 1)(list 1 0 1 0 1 0 1 0)) 





