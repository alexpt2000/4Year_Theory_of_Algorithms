#lang racket

; Ref for prime numbers
; https://stackoverflow.com/questions/3345626/finding-a-prime-number-in-scheme-using-natural-recursion

(define (decide-prime p) 
    (print p)
        (define (non-divisible-by n d) ; anothe function, receive two values
            (cond
            ((= d 1) (println " True")) ; The value just can by one or himself
            (else (if(= (remainder n d) 0) 
                (println " False") ; Value remain 0, the value can divide by another numbers
                (non-divisible-by n (- d 1)))))) 
            (if (= p 1)
                (println " True for number 1") ; If prime is equal one
                (non-divisible-by p (- p 1))))

; conde in just one line
; (define (decide-prime p)(print p)(define (non-divisible-by n d)(cond ((= d 1) (println " True")) (else (if(= (remainder n d) 0) (println " False") (non-divisible-by n (- d 1)))))) (if (= p 1) (println " True") (non-divisible-by p (- p 1))))

; Pass just one number
;(decide-prime 13)

; Ref. for loop
; https://beautifulracket.com/explainer/loops.html
; https://docs.racket-lang.org/guide/for.html

(for ([p (in-range 200)]) ; iterator, in-range will the total number to in the loop
  (decide-prime p)) ; Pass the value to metho to the top