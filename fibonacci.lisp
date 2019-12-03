;Fibonacci

(defun fibonacci(x)
 (cond
   ((<= x 0) 0)
   ((= x 1) 1)
   ((= x 2) 1)
   (t
     (progn
       ;(format t "~A ~%" x)
       (+ (fibonacci (- x 1)) (fibonacci (- x 2)))))))

(format t "~A ~%" (fibonacci 12))
