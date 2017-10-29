#lang racket
(require "./../../../lib/arithmetic/square.rkt")
(provide cbrt)

(define (cbrt x)
    (cbrt-iter 1.0 x))

(define (cbrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (cbrt-iter (improve guess x) x)))

(define (good-enough? guess x)
    (< (delta guess (improve guess x)) (/ 1 1000000)))

(define (improve guess x)
    (/ (+
            (/ x (square guess))
            (* 2 guess))
            3))

(define (delta x y)
  (abs (- x y)))
