(define (square x) (* x x))

(define (divides? a b) (= (remainder b a) 0))


(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
	((divides? test-divisor n) test-divisor)
	(else (find-divisor n (+ test-divisor 1)))))


(define (smallest-divisor n)
  (find-divisor n 2))


(define (prime? n)
  (= n (smallest-divisor n)))
