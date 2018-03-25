#lang racket

(define (maj x y z)
  (cond [(null?  x) '()]
    [(null?  y) '()]
    [(null?  z) '()]
    [else
      (if(=(car x)(car y))
         (cons (car x) (maj (cdr x)(cdr y)(cdr z)))
         (if (= (car y) (car z))
             (cons (car y)(maj (cdr x)(cdr y)(cdr z)))
             (cons (car x)(maj (cdr x)(cdr y)(cdr z)))))]))



(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))



