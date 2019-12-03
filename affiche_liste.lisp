; Affiche chaque élément d'une liste
(defun affiche_liste(l)
 (cond
   ((null l) nil)
   (t
     (progn
       (format t "~A ~%" (car l))
       (affiche_liste (cdr l))))))


(affiche_liste '(1 2 3 4 5 6 7 a b c))
