;Fonction qui vérifie que deux listes sont égales
(defun my_equal(l l2)
  (cond
    ((and (atom l) (atom l2)) (eq l l2))
    ((or (atom l) (atom l2)) nil)
    (t (and (my_equal (car l) (car l2)) (my_equal (cdr l) (cdr l2)))))) ;Tester en récursion si le sous arbre gauche est égal au sous-arbre droit

(my_equal '(a b c '(d e)) '(a b c '(d e)))
