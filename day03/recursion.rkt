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
