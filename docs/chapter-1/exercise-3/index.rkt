#lang racket

(define (square x) (* x x))

(define (sum_of_squares x y) (+ (square x) (square y)))

(define (f a b c)
        (cond ((and (> a c) (> b c)) (sum_of_squares a b))
              ((and (> a b) (> c b)) (sum_of_squares a c))
              (else (sum_of_squares b c)))
)

(f 1 2 3)
