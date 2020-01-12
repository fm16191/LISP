(defun snoc(l)
  (cond
    ((atom l) l)
    (t (list 'cons (snoc (car l)) (snoc (cdr l))))))

(format t "~A ~%" (eval (snoc '((1 2)))))
(format t "~A ~%" (eval (snoc '(1 2 3))))
(format t "~A ~%" (eval (snoc '(1 2 (3) ()))))

(defun replace(symb1 symb2 l)
  (cond
    ((null l) nil)
    ((and (atom l) (eq symb1 l)(list symb2)))
    ((atom l) (list l))
    (t (append (replace symb1 symb2 (car l)) (replace symb1 symb2 (cdr l))))))

(defun match(symb l)
  (cond
    ((null l) l)
    (t (cons (list symb (car l)) (match symb (cdr l))))))

(defun prod-cart(l1 l2)
  (cond
    ((null l1) l1)
    ((null l2) l2)
    (t (append (match (car l1) l2) (prod-cart (cdr l1) l2)))))

(format t "~A ~%" (prod-cart '(1 2 3) '(a b)))
(format t "~A ~%" (replace 'a 1 '((a b) c a ((a)))))
