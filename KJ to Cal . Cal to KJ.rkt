#lang racket
;21315043 kewin barczak
;The program i'm making converts Kilojoules(KJ) into Calories(CAL) and Calories into Kilojoules

;the value of 'x' is in KJ
  (define KJtoCAL (lambda (x) (/ x 4.184)))
;by dividing 'x' by 4.184 it gives the amount of Cal
;Returns Cal

;the value of 'x' is in Cal
  (define CALtoKJ (lambda (x) (* x 4.184)))
;by multiplying 'x' by 4.184 it gives the amount of KJ
;Returns KJ

;this is an example of 5 values from different drinks.
;both of the functions can be used KJ and Cal and both can be converted into each other.
;for example , using the map function will give the answer to all the values.
  (define list '( 473 859 985 722 844 ))
;(map CALtoKJ ( or KJtoCAL ) list )
;returns value of CAL or KJ of the list

 (define lista'( 473 "dog" 859 985 722 "red" 844 ))
;;mapping to check which of the values is a number.

;(map
 ;number?
 ;'( 473 "dog" 859 985 722 "red" 844 ))


;;filter = filters the list to show only numbers.

;(filter
   ;number?
   ;list)

;mapping and filtering at once.

(define TorF (lambda (x) (map
                            number?
                            x )))

(define fil (lambda (x) (filter
                          number?
                          lista)))

(define filmap (lambda (x) (and (TorF x)x(fil x))))

;;this is my project.

                              


 
 
