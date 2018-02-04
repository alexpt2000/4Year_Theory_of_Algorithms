#lang racket

;Write a procedure to-binary that takes a decimal interger and converts it into a
;list of 0’s and 1’s representing the number in binary form. The least significant bit
;should be on the right of the list.

;> (to-binary 9)
;1001

;> (to-binary 23)
;10111

(define (to-binary n)
    (if (= n 0)
    null
    (cons (modulo n 2) (to-binary (/ (- n (modulo n 2)) 2)))))

(to-binary 9)
(to-binary 23)