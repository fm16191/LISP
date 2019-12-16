(setf max_func nil)
(defun func(number)
  (cond
    ((null max_func) (setf max_func number))
    ((> number max_func) (setf max_func number))
    (t max_func)))

(format t "~A ~%" (func 2))
(format t "~A ~%" (func 8))
(format t "~A ~%" (func 5))
(format t "~A ~%" (func 9))
