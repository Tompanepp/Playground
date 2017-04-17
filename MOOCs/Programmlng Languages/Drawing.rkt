#lang slideshow ;comment
(define c (circle 10))
(define r (rectangle 10 20))


(define (square n)
  (filled-rectangle n n))


;local function scope functions
(define (four p)
  (define two-p (hc-append p p))
  (vc-append two-p two-p))


(define (four2 p)
  (let two-p [hc-append p p]
      two-p2 [hc-append p p])
    (vc-append two-p two-p))

(define (checker p1 p2)
  (let ([p12 (hc-append p1 p2)]
        [p21 (hc-append p2 p1)])
    (vc-append p12 p21)))

(define (checker2 p1 p2)
  (define p12 (hc-append p1 p2))
  (define p21 (hc-append p2 p1))
    (vc-append p12 p21))

