#lang racket

(define (hamming-distance lst1 lst2)               
  (cond ((null? lst1) (null? lst2) 0)                     
        ((not(= (car lst1) (car lst2)))                  
         (+ 1 (hamming-distance (cdr lst1) (cdr lst2))))  
        (else(hamming-distance (cdr lst1) (cdr lst2)))))  


(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))

