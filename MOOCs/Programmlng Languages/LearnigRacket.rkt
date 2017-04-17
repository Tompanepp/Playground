#lang racket
(provide
 (contract-out
  [square (-> number? number?)]))

(define (square x)
  (* x x))

