;Version corrigée
(defun corrected_snoc(l)
  (cond
    ((atom l) l)
    (t (list 'cons (snoc (car l)) (snoc (cdr l))))))

(defun test_snoc(l)
  (cond
    ((null l) (progn (format t "null l // ") nil))
    ((atom l) (progn (format t "atom l // ") l))
    ((and (listp l) (null (cdr l)) ) (progn (format t "listp l // " ) (list 'cons (snoc (car l)) '())))
    ((> (length l) 1) (progn (format t "length l > 1 // ") (list 'cons (snoc (car l)) (snoc (cdr l)))))))

(defun snoc(l)
  (cond
    ((null l) nil)
    ((atom l) l)
    ((and (listp l) (null (cdr l)) ) (list 'cons (snoc (car l)) '()))
    ((> (length l) 1) (list 'cons (snoc (car l)) (snoc (cdr l))))))


(setq l '((1 (2 3 4 () 5) (6) ())))
(format t "~A ~%" (snoc l))
(format t "~A ~%" (eval (snoc l)))

(format t "~A ~%" (snoc '(1 2 3)))
