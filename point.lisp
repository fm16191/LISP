;;prend un entier positif et imprime autant de points;;
(defun point (n)
  (if (not (numberp n)) "error")
  (cond
    ((eq 0 n ) "point")
    ((> n 0)
     (progn
       (format t ".")
       (point (- n 1))))


    ((t "error"))))

(point 5)
