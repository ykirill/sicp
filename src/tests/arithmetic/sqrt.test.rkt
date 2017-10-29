#lang racket
(require rackunit "./../../lib/arithmetic/sqrt.rkt")

(check-eq? (exact-round (sqrt 4)) 2 "actual is not equal to expected")
(check-eq? (exact-round (sqrt 9)) 3 "actual is not equal to expected")

(check-eq? (exact-round (new-sqrt 4)) 2 "actual is not equal to expected")
(check-eq? (exact-round (new-sqrt 9)) 3 "actual is not equal to expected")
