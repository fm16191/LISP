(defun calc(l)
 (eval (list (cadr l) (car l) (caddr l))))
(format t "~A ~%" (calc'(1 + 2)))
