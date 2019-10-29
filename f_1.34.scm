(define (w msg)
    (write-line msg)
)
(define (f g) (g 2))

(w (f square))

(w (f (lambda (z) (* z (+ z 1)))))


