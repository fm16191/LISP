; Fonctions déjà écrites

(defun maxi(x y)
 (if (< x y) y x))

(defun mini(x y)
 (if (< x y) x y))

(defun min_max(l minima maxima)
 (if (null l) (list minima maxima)
  (min_max_bis(cdr l)(mini (car l) minima) (maxi (car l) maxima))))


(setf v1 (vector 1 2 3 4 5))
(setf v2 #(a b c d e))
(setf v3 (vector 'p 'q 'r 's 't))

  ; Une fonction récursive qui renvoie un couple de min et max d'un vecteur de nombres
(defun min_max_vecteur(v mi ma)
 (if (null v) (list mi ma)
  (progn
    (setf val (vector-pop v))
    (setf mi (mini mi val))
    (setf ma (maxi ma val))
    (min_max_vecteur v mi ma))))



(setf v (vector 1 2 3 4 5))
(min_max_vecteur v 5 0)
