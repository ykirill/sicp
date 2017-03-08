#lang racket

; A: answer

10 ; A: 10

(+ 5 3 4) ; A: 12

(- 9 1) ; A: 8

(/ 6 2) ; A: 3

(+ (* 2 4) (- 4 6)) ; A: 6

(define a 3)

(define b (+ a 1))

(+ a b (* a b)) ; A: 19

(= a b) ; A: #f

(if (and (> b a) (< b (* a b)))
    b
    a) ; A: 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)) ; A: 16

(+ 2 (if (> b a) b a)) ; A: 6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1)) ; A: 16
