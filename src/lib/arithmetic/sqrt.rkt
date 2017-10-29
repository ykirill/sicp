#lang racket
(require "./square.rkt")
(provide sqrt new-sqrt)

(define (sqrt x)
    (sqrt-iter 1.0 x))

(define (new-sqrt x)
    (new-sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
            x)))

(define (new-sqrt-iter guess x)
    (if (new-good-enough? guess x)
        guess
        (new-sqrt-iter (improve guess x)
            x)))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (new-good-enough? guess x)
    (< (delta guess (improve guess x)) (/ 1 1000000)))

(define (average x y)
    (/ (+ x y) 2))

(define (improve guess x)
    (average guess (/ x guess)))

(define (delta x y)
  (abs (- x y)))
