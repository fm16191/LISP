(setf dernier_arg nil)
(defun plus_grand_arg(number)
  (cond
    ((null dernier_arg) (progn (setf dernier_arg number) nil))
    ((> number dernier_arg) t)
    (t (setf dernier_arg number) nil)))

(format t "~A ~%" (plus_grand_arg 5))
(format t "~A ~%" (plus_grand_arg 7))
(format t "~A ~%" (plus_grand_arg 8))
(format t "~A ~%" (plus_grand_arg 1))
(format t "~A ~%" (plus_grand_arg 3))
