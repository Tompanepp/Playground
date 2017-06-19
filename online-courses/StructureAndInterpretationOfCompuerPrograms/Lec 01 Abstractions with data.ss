(define (abs x)
    (cond ((> x 0) x)
          ((= x 0) 0)
          ((< x 0) (- x))))

(define (abs x)
        (cond ((< x 0) (- x))
        (else x)))


(define (abs x)
        (if (< x 0)(- x)
            x))



EXCERCISE 1.1. What will be the results?

  10 : 10
  (+ 5 3 4) : 12
  (- 9 1) : 8
  (/ 6 2) : 3
  (+ (* 2 4) (- 4 6)) : (not 10) : 6
  (define a 3) : a == 3
  (define b (+ a 1)): b == 4
  (+ a b (* a b)): 19
  (= a b) #f == false
  (if (and (> b a) (< b (* a b))) b a): a {#f = false}
  (cond ((= a 4) 6)
        ((= b 4)(+ 6 7 a))
        (else 25))
        : 16 {clause 2 := #t and results in (6 + 7 + 4) }

  (+ 2 (if (> b a) b a)): 6 {#t and results in ( 2 + 4)}: 6
  (* (cond ((> a b) a)
           ((< a b) b)
           (else -1))
     (+ a 1))
     : (not 4) : 16 (* 4 (+ a 1))

EXCERCISE 1.2. Translate to prefix notation

5 + 4 + (2−(3−(6+ 4)))
  3(6 − 2)(2 − 7)

  (/ (+ 5 4 (- 2 (- 3 (/ 4 5)))) (*(* 3 (- 6 2))(- 2 7)))


EXCERCISE 1.3

(define (square x) (* x x))
(define (sumOfLargest x y z) (cond ( (and (> x y) (> x z) (> y z)) (+ (square x)(square y)) )
                                   ( (and (> x y) (> x z) (> z y)) (+ (square x)(square z)) )
                                   (else  (+ (square y)(square z)) )
                                   ))


EXCERCISE 1.4
  "((if (> b 0) + -) a b))" will be substuted every "a-plus-abs-b" is use in a program

EXCERCISE 1.5
