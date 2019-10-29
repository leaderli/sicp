(define x 3)

(define (square x)(* x x))

(define (sum-of-square x y)
(+ (square x) (square y))
)

(define (f a)
    ( sum-of-square (+ a 1)(* a 2))
)


(write-line 
    (
        / 
        (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
        (* 3 (- 6 2) (- 2 7))
    )
)

(define (abs x)
    (cond 
        ((< x 0 ) (- x))
        (else x)
    )
)


(define (sum_1 a b c)
    (+ a b c)
)

(define (sum_2 a b c)
    (cond 
        (
            (and 
            (< a c)
            (< a b)
            ) 
            (+ b c)
        ) 
        ( 
            (and 
            (< b a)
            (< b c)
            ) 
            (+ a c)
        ) 
        (else 
            (+ a b)
        )
    )
)

(define (average x y)
    (/ (+ x y) 2)
)

(define (sqrt x)
    (define (good-enough? guess  )
        (
            < 
            (abs (- x (square guess)))
            0.001
        )
    )
    (define (improve guess )
        (
            average guess (/ x guess)
        )
    )
    (define (sqrt-iter guess )
        (
            if (good-enough? guess )
            guess
            (sqrt-iter (improve guess ) )
        )
    )
    (
        sqrt-iter 1.0 
    )
)

(write-line (sqrt 9))

(define (factorial x )
    (   if (= 1 x) 
        1 
        (* x (factorial (- x 1)))
    )
)

(write-line (factorial 5))

(define (factorial x)
    (define (factorial-iter product count max)
        ( if(= count max)
            product
            (factorial-iter 
                (*  product (+ count 1)) 
                (+ count 1)
                max
            )
        )
    )
    (factorial-iter 1 1 x)
)

(write-line (factorial 5))

(define (factorial x)
    (define (iter product count)
        (if(= count x)
            product
            (iter
                (* product (+ count 1))
                (+ count 1)
            )
        )
    )
    (iter 1 1)
)
(write-line (factorial 5))

(define (A x y)
    (cond
        ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))
    )
)
(write-line (A 3 4))