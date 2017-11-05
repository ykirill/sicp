#lang racket
(provide f-rec)

(define (f-rec n)
    (cond ((< n 3) n)
        (else (+ (f-rec (- n 1))
                 (f-rec (- n 2))
                 (f-rec (- n 3))))))
