;Fonction qui inverse tout les éléments d'une liste
(defun reverse(l)
 (setf a '())
 (cond
   ((null l) nil)
   (t
        (progn
            ;(format t "~A ~A ~%" a (cdr l))
            (append (reverse (cdr l)) (list (car l)))))))

(format t "~A ~%" (reverse '(a b c d e f g h i j)))
