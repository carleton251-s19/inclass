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
    .....))

(define subsets
  (lambda (lst)
    ........))