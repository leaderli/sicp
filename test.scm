(define (fib a b n)
        (if ( = n 0 ) b 
        (fib (+ a b) a (- n 1))
        )
)

(write-line (fib 1 0 10 ))