(defun pairlist(l l2)
    (cond
        ((null l) l2)
        ((null l2) l)
        ((null (cdr l)) (car l))
        ((null (cdr l2)) (car l2))
        (t
            (cons (list (car l) (car l2)) (pairlist (cdr l) (cdr l2))))))

(format t "~A ~%" (pairlist '(a b c ) '()))
