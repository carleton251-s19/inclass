(define test
  (lambda (a b)
    (if (equal? a b)
        'pass
        'FAILED)))

(define fact
  (lambda (n)
    (if (equal? n 1)
        1
        (* n (fact (- n 1))))))

(test (fact 3) 6)
(test (fact 5) 120)

(define list-length
  (lambda (lst)
    (if (null? lst)
        0
        (+ 1 (list-length (cdr lst))))))
    

(test (list-length '(a b c)) 3)
(test (list-length '(a b c d e)) 5)
(test (list-length '()) 0)

(define list-of-numbers?
  (lambda (lst)
    (if (null? lst)
        #t
        (and (number? (car lst))
             (list-of-numbers? (cdr lst))))))

(test (list-of-numbers? '(3 6 2 1)) #t)
(test (list-of-numbers? '(3 6 a 1)) #f)