(define gen-lazy-list
  (lambda (start stop)
    (if (> start stop)
        #f
        (cons start
            (lambda ()
              (gen-lazy-list (+ start 1) stop))))))

; (subsets '(1 2 3))
; ----> ( () (1) (2) (3) (1 2) (1 3) (2 3) (1 2 3))
; but I don't care about order

; (cons-each '1 '( (a b) (c) () (d e))
; --->  ( (1 a b) (1 c) (1) (1 d e) )

(define cons-each
  (lambda (s lst)
    (if (null? lst)
        '()
        (cons (cons s (car lst))
               (cons-each s (cdr lst))))))

(require rackunit)
(check-equal? (cons-each 1 '( (a b) (c) () (d e)))
              '( (1 a b) (1 c) (1) (1 d e) ))
(cons-each 1 '( (a b) (c) () (d e)))

(define subsets
  (lambda (lst)
    (if (null? lst)
        '(())
        (append
         (cons-each (car lst) (subsets (cdr lst)))
         (subsets (cdr lst))))))

;(subsets '(1 2 3))

(define subsets-faster
  (lambda (lst)
    (if (null? lst)
        '(())
        (let ((other-subs (subsets-faster (cdr lst))))
          (append
           (cons-each (car lst) other-subs)
           other-subs)))))

(subsets-faster '(1 2 3))



; Currying examples

; Non-curried function. Just a normal function
(define mult
  (lambda (a b)
    (* a b)))
(mult 3 5)

; Curried version
(define cmult
  (lambda (a)
    (lambda (b)
      (* a b))))

(define thing (cmult 3))
(thing 5)

((cmult 6) 3)