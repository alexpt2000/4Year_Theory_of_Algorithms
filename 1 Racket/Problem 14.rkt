#lang racket

;Write a function select that takes two elements, a list and a position in the list, and
;return the element of the list in that position.

;> (select (list 1 2 3 4 5) 1)
;2


(define (select l i)
    (if (= i 0)
        (car l)
        (select (cdr l) (- i 1))))

(select (list 1 2 3 4 5) 1)       


