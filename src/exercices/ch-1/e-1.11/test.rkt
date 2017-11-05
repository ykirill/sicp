#lang racket
(require rackunit "./solution-recursive.rkt" "./solution-iterative.rkt")

(check-eq? (f-rec 2) 2 "f-rec not equal")
(check-eq? (f-rec 3) 3 "f-rec not equal")
(check-eq? (f-rec 4) 6 "f-rec not equal")
(check-eq? (f-rec 5) 11 "f-rec not equal")
(check-eq? (f-rec 6) 20 "f-rec not equal")

(check-eq? (f-it 2) 2 "f-it not equal with 2")
(check-eq? (f-it 3) 3 "f-it not equal with 3")
(check-eq? (f-it 4) 6 "f-it not equal with 4")
(check-eq? (f-it 5) 11 "f-it not equal with 5")
(check-eq? (f-it 6) 20 "f-it not equal with 6")