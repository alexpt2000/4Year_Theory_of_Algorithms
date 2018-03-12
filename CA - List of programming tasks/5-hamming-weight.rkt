#lang racket

(define (hamming-weight l) 
        (if (null? l)
            0
            (+ (car l) (hamming-weight (cdr l)))
            ))

(hamming-weight (list 1 0 1 0 1 1 1 0))
