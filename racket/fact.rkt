#lang racket/base

;;; This is a base rase implementation of factorial used as a benchmark.

; (: factorial (-> Integer Integer))
(define (factorial n)
  (if (= 0 n)
      1
      (* n (factorial (sub1 n)))))

(display (factorial 1000))