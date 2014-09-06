;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Module 00-exercise7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; circumference : Number -> Number
; GIVEN: the radius r of a circle 
; RETURNS: its circumference, using the formula 2 * pi * r.
; Examples:
; (circumference 1)  =>  6.283185307179586 
; (circumference 0)  =>  0

(define (circumference r)
  (cond
    [(not (number? r)) "The input should be a number."]
    [(>= 0 r) "The input should be larger than 0."]
    [else (* 2 pi r)]))


;test cases
(circumference 1)
(circumference 0)
(circumference 2)
(circumference -2.1)
(circumference "r")