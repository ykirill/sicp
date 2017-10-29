## Упражнение 1.2

Определите процедуру, которая принимает в качестве аргументов три числа и возвращает сумму квадратов двух больших из них.
    
## Решение:

```racket

#lang racket/base

(provide solution)

(define (square x)
    (* x x))

(define (sum-of-squares x y)
    (+ (square x) (square y)))

(define (solution x y z)
    (cond ((and (> x z) (> y z)) (sum-of-squares x y))
          ((and (> x y) (> z y)) (sum-of-squares x z))
          (else (sum-of-squares y z))))
```
[Code](../../../../../src/exercices/ch-1/e-1.3/solution.rkt) |
[К списку упражнений](../index.md)