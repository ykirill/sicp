#lang racket
(require rackunit "./solution.rkt")

(check-eq? (exact-round (cbrt 8)) 2 "Not equal")
