(defun exo1f(l)
  (cond
      ((atom l) nil)
      ((t
        (progn
          (format t "~A" (car l))
          (exo1f cdr(l)))))))

(exo1f '(s o u s f o r m e d u n e l i s t e))
