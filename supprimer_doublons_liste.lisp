(defun doublon(l)
 (cond
  ((null (cdr l)) l)
  (t (cons (car l) (doublon (remove (car l) (cdr l)))))))

(format t "~A ~%" (doublon '(a b c a a b b e d c e d e a b c d e d b a a b)))
