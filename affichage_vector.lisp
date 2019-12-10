(setf v1 (vector 1 2 3 4 5))
(format t "~A ~%" v1)

(defun appel(v1 i)
 (cond
 ((>= i (length v1)))
 ((null v1) nil)
 ((= i -1) nil)
 (t (progn
    (format t "~A ~%" (svref v1 i))
    (appel v1 (- i 1))
 )
))
)

(format t "LENGTH ~A ~%" (length v1))
(appel v1 4)
