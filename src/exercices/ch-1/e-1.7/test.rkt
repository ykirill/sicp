#lang racket
(require rackunit "./solution.rkt")

(check-true (good-enough? 2 4) "not true")
(check-false (good-enough? 2.00004 4) "not true")
