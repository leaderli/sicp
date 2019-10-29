(define (w msg)
    (write-line msg)
)
(w "-------")
(w 
    (
    (lambda (x) (+ x 4) ) 100
    )
)


(define (f x y)
    (define (helper a b)
    (+ (* x a a)
        (* y b)
        (* a b)
    )
    )
    (helper 
        (+ 1 (* x y))
        (- 1 y)
    )
)

(w (f 1 2))

(define (f x y)
    (
    (lambda(a b)
    (+ (* x a a)
        (* y b)
        (* a b)
    )
    )
    (+ 1 (* x y))
    (- 1 y)
    )
)

(w (f 1 2))



(define (f x y)
    (let 
    (
        (a (+ 1 (* x y)))
        (b (- 1 y))
    )
    (+ (* x a a)
        (* y b)
        (* a b)
    )
    )
)

(w (f 1 2))


(define (f x)
    (+ 
        (let
        ((x 3))
        (+ x (* x 10))
        ) 
        x
    )
)

(w (f 5))

(w 
(
    (lambda (x)
        (let
        (   (x 3)
            (y (+ x 2))
        )
        (* x y)
        )
    )
2
)
)