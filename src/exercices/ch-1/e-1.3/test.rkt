#lang racket/base
(require rackunit "solution.rkt")

(check-eq? (solution 1 2 3) 13 "is not eq?")
(check-eq? (solution 3 2 1) 13 "is not eq?")
(check-eq? (solution 3 1 2) 13 "is not eq?")

(check-eq? (solution 2 2 4) 20 "is not eq?")
(check-eq? (solution 5 2 4) 41 "is not eq?")
