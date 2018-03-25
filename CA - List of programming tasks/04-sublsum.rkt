#lang racket

(define (sumList l)
 (if(null? l) 0 
   (+ (car l)(sumList (cdr l)))))

(define (sublsum l)
  (for ([i (combinations l)])
    (if (= (sumList i) 0)
        (println i)
        '()
    )))


(sublsum (list 1 2 3 4 -5))
(sublsum (list 1 2 3 4 5))

; (sublsum (list 1 2 3 4 -5))
;'((2 3 -5) (-5 1 4))

; (sublsum (list 1 2 3 4 5))
;'()
