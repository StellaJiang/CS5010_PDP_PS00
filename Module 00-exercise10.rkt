;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Module 00-exercise10|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; sumoftwolargernumber : Number Number Number -> Number
; GIVEN: three numbers
; RETURNS: the sum of the two larger number.
; Examples:
; (sumoftwolargrenumber 4 5 7)  =>  12 
; (sumoftwolargernumber 3 8 -2)  =>  11

(define (sumoftwolargernumber a b c)
  (cond 
    [(not (and (number? a) (number? b) (number? c))) "Inputs should be numbers."]
    [(and (<= a b) (<= a c)) (+ b c)] ;a is the smallest number, return b+c
    [(and (<= b a) (<= b c)) (+ a c)] ;b is the smallest number, return a+c
    [else (+ a b)])) ;c is the smallest number, return a+b


;test cases
(sumoftwolargernumber 4 5 7)
(sumoftwolargernumber 3 8 -2)
(sumoftwolargernumber 9 0 5)
(sumoftwolargernumber 9 9 5)
(sumoftwolargernumber 4 9 4)
(sumoftwolargernumber 4 4 4)
(sumoftwolargernumber "4" 4 4)
(sumoftwolargernumber 4 "4" 4)
(sumoftwolargernumber 4 4 "4")

