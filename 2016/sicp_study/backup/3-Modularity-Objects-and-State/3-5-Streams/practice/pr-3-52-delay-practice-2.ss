(load "../../../modules/3/stream.ss")


(define sum 0)

(define (accum x)
  (set! sum (+ x sum)) sum)

;(stream-map (lambda (e) e) (cons-stream 1 2))
(define seq
  (stream-map accum
	      (stream-enumerate-interval 1 20)))

(define y (stream-filter even? seq))

(define z
  (stream-filter (lambda (x) (= (remainder x 5) 0)) seq))

(stream-ref y 7)
(display-stream z)
