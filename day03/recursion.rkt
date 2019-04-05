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

(define nth
  (lambda (lst n)
    (if (equal? n 0)
        (car lst)
        (nth (cdr lst) (- n 1)))))

(test (nth '(3 6 2 1) 1) 6)
(test (nth '(3 6 2 1) 3) 1)

(define remove-first
  (lambda (s lst)
    (cond ((null? lst) '())
          ((equal? s (car lst)) (cdr lst))
          (else (cons (car lst)
                      (remove-first s (cdr lst)))))))

(test (remove-first 'a '(a b c)) '(b c))
(test (remove-first 'd '(a b c)) '(a b c))
(test (remove-first 'a '(d a b a c)) '(d b a c))
;; remove-all
;; (remove-all 'a '(a b c a d e a)) ---> '(b c d e)

;; (subst 'b 'a '(w b c b d e))  -->  '(w a c a d e)