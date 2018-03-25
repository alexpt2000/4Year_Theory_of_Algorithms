#lang racket

;Ref. https://stackoverflow.com/a/29137191 
(define (my-append list1 list2)
  (if (null? list1)
      list2
      (cons 
        (car list1) (my-append (cdr list1) list2))))


(define (lcycle list)
  (if (null? list)
      '()
      (my-append 
          (cdr list)
            (cons (car list)
              '()
                  ))))

(lcycle (list 1 2 3 4 5))

;> (lcycle (list 1 2 3 4 5))
;'(2 3 4 5 1)


