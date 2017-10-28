#lang racket

(provide good-enough?)

(define (good-enough? guess x)
    (< (abs (- (/ guess (improve guess x)) 1)) (/ 1 1000000)))

(define (average x y)
    (/ (+ x y) 2))

(define (improve guess x)
    (average guess (/ x guess)))