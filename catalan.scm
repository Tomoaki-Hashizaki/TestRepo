(define (catalan n)
  (if (<= n 1)
      1
      (catalan2 n 0)))

(define (catalan2 m n) 
		 (if (>= n m)
		     0
		     (+ (* (catalan n) (catalan (- m (+ n 1)))) (catalan2 m (+ n 1)))))

(catalan 2)
(catalan 3)
(catalan 4)
(catalan 5)