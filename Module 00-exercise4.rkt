;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Module 00-exercise4|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; tip : NonNegNumber Number[0.0,1.0] -> Number
; GIVEN: the amount of the bill in dollars and the
; percentage of tip
; RETURNS: the amount of the tip in dollars.
; Examples:
; (tip 10 0.15)  => 1.5
; (tip 20 0.17)  => 3.4

(define (tip x y)
  (cond
    [(not (and (number? x) (number? y))) "Inputs should be numbers."]
    [(negative? x) "The 1st argument should be bigger than 0."]
    [(or (> 0 y) (< 1 y)) "The 2nd argument should between 0.0 and 1.0."]
    [else (* x y)]))


;test cases
(tip true "a")
(tip 22 "a")
(tip true 0.2)
(tip 10 0.15)
(tip 20 0.17)
(tip -10 0.15)
(tip 20 1.17)
(tip -20 1.17)

