;;prend une liste et renvoie le nombre de fois que le symbole ’a’ apparaît dans la liste

(setf c 0)
(defun counta (l a)
  (cond
    ((null l) (progn (format t "Le caractère ~A apparaît ~A fois dans l ! ~%" (a) (c)) nil))
    ((listp l) (progn
                (if (eq a (car l))
                    (progn (format t "trouvé") (+ c 1)))

                (counta (cdr l) a))))


  c)
(format t "~A ~%" (counta '(a b c d e f g h i j a d f a d f) 'a))
