;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Module 00-exercise6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; quadratic-root : NonZeroNumber Number Number -> Number
; GIVEN: three parameters of a quadrtic equation
; the quadratic coefficient a, the linear coefficient b and the constant c
; RETURNS: one of the solutions, using the formula (-b + sqrt(b^2-4ac))/2a.
; Examples:
; (quadratic-root 1 4 3) => -1
; (quadratic-root 2 -7 3) => 3

(define (quadratic-root a b c)
  (cond 
    [(not (and (number? a) (number? b) (number? c))) "Inputs should be numbers."]
    [(= 0 a) "The 1st argument cannot be 0"]
    [(< 0 (- (* b b) (* 4 a c))) ;if b^2-4ac is greater than 0, do the calculate
        (/ (+ (- 0 b)
              (sqrt 
              (- (* b b) 
                 (* 4 a c)))) 
           (* 2 a))]
    [else "No Result! Because b^2-4ac < 0"]))


;test cases
(quadratic-root "a" 1 true)
(quadratic-root 3 1 true)
(quadratic-root 3 "5" 5)
(quadratic-root 1 4 3)
(quadratic-root 2 -7 3)
(quadratic-root 2 1 3)
(quadratic-root 0 1 3)