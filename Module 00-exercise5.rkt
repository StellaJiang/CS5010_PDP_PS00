;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Module 00-exercise5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;sq: Number -> Number
;RETURNS: square of the number
;Examples:
;(sq 5) => 25
;(sq 7) => 49

(define (sq x)
  (cond
    [(number? x) (* x x)]
    [else "The input shoule be a number."]))


;test cases
(sq 5)
(sq 7)
(sq 12)
(sq "a")