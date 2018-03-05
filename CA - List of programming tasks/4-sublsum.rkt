#lang racket

(define (myAdd l)
  (if(not(null? l))
  (for/sum ((i l))
    i)
  1
  ))


(define (sublsum l)
  (for ([e (in-list (combinations l) )])
    (if(= 0 (myAdd e))
       (displayln e)
       '())))


(sublsum (list 1 2 3 4 5))


;> (sublsum (list 1 2 3 4 -5))
;'((2 3 -5) (-5 1 4))

;> (sublsum (list 1 2 3 4 5))
;'()
