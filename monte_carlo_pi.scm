(define (incircle n i r0 r)
 (let ((a 214013)
      (b 2531011)
      (p 2696959)) 
   (if (= n i)
      0
      (if (< (+ (expt r0 2) (expt r 2)) (expt p 2))
      (+ (incircle n (+ i 1) (remainder (+ b (* a r)) p ) 
		(remainder (+ (* (remainder (+ b (* a r)) p) a) b) p)) 1)
       (incircle n (+ i 1) (remainder (+ b (* a r)) p ) 
		(remainder (+ (* (remainder (+ b (* a r)) p) a) b) p)) ) ) ))

(exact->inexact (* (/ (incircle 2000000 0 30000 100000) 2000000) 4))
