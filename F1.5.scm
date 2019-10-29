(define (w msg)
    (write-line msg)
)
(define (fib n)
    (cond 
            ((= n 0) 0)
            ((= n 1 ) 1)
            (else 
                (
                + (fib (- n 1)) (fib (- n 2))
                )
            )
    )
)

; (w (fib 10))
; (w "------------------------")



(define (fib n)
    (define (fib-iter a b n )
            (if(= n 0) b 
                (fib-iter (+ a b) a (- n 1))
            )
    )
    (fib-iter 1 0 n )
)
(w (fib 10))