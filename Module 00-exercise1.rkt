;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Module 0-exercise1_2|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;count the number of seconds in a leap year

(* 60 60 24 366) ;first expression

(* 60        ;second expression, 60 seconds in one minute
   60        ;60 minutes in one hour
   24        ;24 hours in one day
   (+ (* 31 7) (* 30 4) 29))   ;7 months have 31 days, 4 months have 30 days, February has 29 days 

(* (* 60 60)
   (* 24 
      (-(* 31 12)    
           (+ 4 2))))





