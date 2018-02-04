#lang racket
;3. Define a function grcomdiv that takes two integers and returns their greatest common
;divisor.
;> (grcomdiv 10 15)
;5
;>(grcomdiv 64 30)
;2

; Another way
; (define (grcomdiv value1 value2)
;   (gcd value1 value2))

(define (grcomdiv a b)
    (if (< a b)
        (grcomdiv b a)
            (if (= b 0)
                a
                (grcomdiv (modulo a b) b))))


(grcomdiv 10 15)
(grcomdiv 64 30)