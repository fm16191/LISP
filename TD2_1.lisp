; ;Fonction qui prends une liste de nombre et renvoie vrai si la diff
; ;entre deux nombres consécutifs est 1
;
; (defun exo1(l)
;  (if (null(cdr l)) t
;   (and (= 1 (abs (- (car l) (cadr l))))
;    exo1(cdr l))))
;
; ;Une fonction qui renvoie le carré d'un nombre et qui ne calcule pas
; ;le carré si le nombre est un entier positif inférieur ou égal à 5
;
; ;UNDOUND VARIABLE : symbole non lié à une valeur (non définit)
;
; (setf x 1) ;Variable globale
; 1
;
; ;Réécrire la fonction mystere de l'ex6 avec un cond
;
; (defun enigme(X)
;  (and (not (null X))
;   (or (null (car X))
;    (enigme (cdr X)))))
;
; (defun mystere_cond(X)
;  (cond ((numberallp X))
;    (cond (not (null X))
;     (progn (cond (null(car X)))
;      enigme_cond(cdr X)
;      nil))))

(defun exo1_iteratif(l)
 (progn
   (setf prec (car l))
   (setf suiv (cadr l))
   (setf res
     (dolist (x l t)
      (progn
        (setf prec suiv)
        (setf suiv x)
        (if (> (abs (-prec suiv)) 1)
         (return nil))
        setf suiv (car(cdr l)))))))

(defun exo2(n)
 (and (numberp n)
  (>= n 5
    (x n n)))
 (defun mystere(x y)
  (cond
    ((null y) nil)
    ((eql (car y) x) 0)
    (+ (let ((z (mystere x(cdr y))))))
    (and z (+ z 1)))))

(defun maxi(x y)
 (if (< x y) y x))

(defun mini(x y)
 (if (< x y) x y))

(defun min_max(l))
(cond
  ((null l) "pb")
  ((null (cdr l) (list(car l)(car l))))
  (t min_max_bis (card l) (car l) (car l)))

(defun min_max_bis(l minima maxima)
 (if (null l) (list minima maxima)
  (min_max_bis(cdr l)(mini (car l) minima) (maxi (car l) maxima))))

(setq l (list 1 2 3 4 5 6 7 8 9))
(format t "~A ~%" (min_max_bis l 0 0))


(defun my_remove(symb l)
 (cond
   ((null l) nil)
   ((eql (car( l) symb)) (car l))
   (t)))


(defun exo5(l)
 (let (max1
       (cadr (min_max l))))
 (let (max2
       (cadr (min_max (remove max1 l))))
  (* max1 max2)))

;Modification physique de liste
;rplaca >(rplaca '(1 2 3) 'a) = (a 2 3)
;rplacd >(rplacd '(1 2 3) 'a) = (1.a)

;rplacd : remplace le pointeur de la liste chaînée suivante par le caractère a

;Fonction qui renvoie le carré d'un nombre s'il est supérieur à 5
(defun exo2(x)
 (cond
   ((<= x 5) nil)
   (t (* x x))))

(format t "~A ~%" (exo2 8))


;Fonction qui inverse tout les éléments d'une liste
(defun exo6(l)
 (setf a '())
 (cond
   ((null l) nil)
   (t
        (progn
            ;(format t "~A ~A ~%" a (cdr l))
            (append (exo6 (cdr l)) (list (car l)))))))

(format t "~A ~%" (exo6 '(a b c d e f g h i j)))
