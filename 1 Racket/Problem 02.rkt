#lang racket
;2. Define a procedure discount that takes two arguments: an item’s initial price and a
;percentage discount [2]. It should return the new price:

;> (discount 10 5)
;9.50
;> (discount 29.90 50)
;14.95



(define (discount value disc)
   (- value (/ (* value disc) 100.0)))


(discount 10 5)
(discount 29.90 50)

