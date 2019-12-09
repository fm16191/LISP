; Affichage sous forme d'une liste
(defun func2(l)
  (cond
    ((atom l) nil)
    (t (progn
        (format t "~A " (car l))
        (func2 (cdr l))))))

(func2 '(s o u s f o r m e d u n e l i s t e))
