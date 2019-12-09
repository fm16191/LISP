(defun popp(mapile)
 (progn
  (setf x (car mapile))
  (setf mapile (cdr mapile))
  x))

(setf mapile (list 1 2 3 4 5 6 7))
(format t "~A || ~A ~%" (popp mapile) mapile)
