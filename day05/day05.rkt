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

(define my-map
  (lambda (f lst)
    (if (null? lst)
        '()
        (cons (f (car lst)) (my-map f (cdr lst))))))

(my-map addOne '(7 3 1 3 9))

(define my-foldl
  (lambda (f init lst)
    (if (null? lst)
        init
        (my-foldl f (f (car lst) init) (cdr lst)))))

(my-foldl cons '() '(1 2 3 4))

(define my-foldr
  (lambda (f init lst)
    (if (null? lst)
        init
        (f (car lst) (my-foldr f init (cdr lst))))))

(my-foldr cons '() '(1 2 3 4))
(my-foldl addTwoThings 0 '(1 2 3 4))
(my-foldr addTwoThings 0 '(1 2 3 4))
(my-foldl - 0 '(1 2 3 4))
(my-foldr - 0 '(1 2 3 4))

;(define my-foldl ...)
;(define my-foldr ...)



