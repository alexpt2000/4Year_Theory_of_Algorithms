#lang racket

(define (collatz-list n)
  (cond
  ((= n 1) '(1))((even? n)
  (cons n (collatz-list (/ n 2))))
    (else
      (cons n 
        (collatz-list (+ (* 3 n) 1))))))


(collatz-list 2)


;> (collatz-list 5)
;'(5 16 8 4 2 1)

;> (collatz-list 9)
;'(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)

;> (collatz-list 2)
;'(2 1)

