#lang racket

(define (lstq l m)                                     
  (cond ((null? l)(null? m) 0)                         ;verify if list are empty and outputs 0
        ((+ (* (- (car l)(car m))(- (car l)(car m)))   ;squares each element and sums
           (lstq (cdr l)(cdr m))))))                   



(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))  




