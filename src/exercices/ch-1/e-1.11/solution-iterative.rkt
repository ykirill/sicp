#lang racket
(provide f-it)

(define (f-it n)
    (define (iter a b c counter)
        (if (= counter 0)
            c
            (iter (+ c b a) a b (- counter 1))))
    (iter 2 1 0 n))
