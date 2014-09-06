;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Module 00-exercise9|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; even2? : Number -> Boolean
; GIVEN: a number
; RETURNS: true if this number is divisible by 2, and false otherwise.
; Examples:
; (even 4)  =>  true 
; (even 3)  =>  false

(define (checkeven a)
  (if (= (remainder a 2) 0)
      true
      false))

(define (even2? b)
  (cond
    [(not (number? b)) "The input should be a number."]
    [(integer? b) (checkeven b)] ;If the input is an integer, check if it is divisible by 2.
    [else false])) ; If the input isn't an integer, return false.


;test cases
(even2? 3)
(even2? 4.2)
(even2? 4)
(even2? "w")




