#lang racket

(define (decide-prime p) 
    (print p)
        (define (non-divisible-by n d)
            (cond
            ((= d 1) (println " True"))
            (else (if(= (remainder n d) 0) 
                (println " False")
                (non-divisible-by n (- d 1))))))
            (if (= p 1)
                (println " True for number 1")
                (non-divisible-by p (- p 1))))

; conde in just one line
; (define (decide-prime p)(print p)(define (non-divisible-by n d)(cond ((= d 1) (println " True")) (else (if(= (remainder n d) 0) (println " False") (non-divisible-by n (- d 1)))))) (if (= p 1) (println " True") (non-divisible-by p (- p 1))))

; Pass just one number
;(decide-prime 13)

; Ref. for loop
; https://beautifulracket.com/explainer/loops.html

(for ([p (in-range 200)]) ; iterator, in-range will the total number to in the loop
  (decide-prime p)) ; Pass the value to metho to the top