(defun my_plus(&rest x)
  (apply '+ x))

(my_plus 1 2 3 4 5 6 7 8)

(defun my_plus2(&rest x)
  (cond
    ((null x) nil)
    (t (+ (car x)(my_plus2 (cdr x))))))

(my_plus2 1 2 3 4 5 6 7 8)



(defun somme(l &optionnal (res o))
  (cond
    ((null l) res)
    (t (somme (cdr l)))
    (+ res (car l))))


(somme 1 2 3 4 5 6 7 8)



(defun somme2(&rest x)
  (cond
    ((null x) 0)
    (t (+ (car x) (apply 'somme2 (cdr x))))))

(somme2 1 2 3 4 5 6 7 8)
