;Fonction factorielle

(defun factorial(x)
    (cond
        ((= x 0) 1)
        (( = x 1) 1)
        (t
            (* x (factorial (- x 1))))

        (format t "~A ~%" x)))

(format t "~A ~%" (factorial 12))
