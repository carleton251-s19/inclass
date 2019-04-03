;; function that adds two numbers
(define add-em
  (lambda (x y)
    (+ x y)))

(
 (lambda (x y)
   (- x y))
 7 3)

( (lambda (x y) (- x y))     7       3)
(         -                  7       3)


;; bad Scheme style
(define add-em2
  (lambda (x y)
    (+ x y)
  )
)