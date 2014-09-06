;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Module 00-exercise3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;f->c: Number -> Number
;Given: a temputer in degrees Fahrenheit as an argument
;RETURNS: the equivalent temperature in degrees Celsius
;Examples:
;(f->c 32) => 0
;(f->c 100) => 37.77777777777778

(define (f->c x)
  (cond
    [(number? x) (* (- x 32) (/ 5 9))]
    [else "The input should be a number."]))


; test cases
(f->c 32)
(f->c 100)
(f->c 64)
(f->c "a")