#lang racket
(require (planet "sicp.ss" ("soegaard" "sicp.plt" 2 1)))

(provide up-split)


(define (up-split painter n)
  (if (= n 0)
      painter
      (let ((smaller (up-split painter (- n 1))))
        (below painter (beside smaller smaller)))))
