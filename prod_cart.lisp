(defun match(symb l)
  (cond
    ((null l) l)
    (t (cons (list symb (car l)) (match symb (cdr l))))))

(defun prod-cart(l1 l2)
  (cond
    ((null l1) l1)
    ((null l2) l2)
    (t (append (match (car l1) l2) (prod-cart (cdr l1) l2)))))


(defun prod-cart-idk(l1 l2)
    (cond
        ((null l1) nil)
        ((null l2) nil)
        ((and (atom l1) (atom l2)) (progn (format t " atomatom ") (list l1 l2)))
        ((atom l1) l1)
        ((atom l2) l2)
        (t (list (prod-cart (car l1) (car l2)) (prod-cart l1 (cdr l2))))))

(defun prod_cart2(l1 l2)
  (cond
    ((null l1) nil)
    ((null l2) nil)
    ((atom l1) l1)
    ((atom l2) l2)
    (t (cons (list (car l1) (prod_cart2 l1 (car l2)) (list (car l1) (prod_cart2 l1 (cdr l2)) (list (cdr l1) (prod_cart2 l1 (car l2)))))))))

(setq l '(1 2 3 4))
(setq l2 '(a b c))
(format t "~A ~%" (prod_cart2 l l2))
