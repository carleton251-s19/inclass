;; An example of map
(define addOne
  (lambda (x)
    (+ x 1)))

(addOne 5)

(map addOne '(7 3 1 3 9))

(foldl cons '() '(1 2 3 4))
(foldr cons '() '(1 2 3 4))


(define addTwoThings
  (lambda (x y)
    (+ x y)))

(addTwoThings 3 5)

(foldl addTwoThings 0 '(4 2 1 4 5))

(define my-map...)
(define my-foldl ...)
(define my-foldr ...)



