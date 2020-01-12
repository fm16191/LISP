(defun replace(symb1 symb2 l)
  (cond
    ((null l) nil)
    ((and (atom l) (eq symb1 l) symb2))
    ((atom l) l)
    ((and (listp l) (null (cdr l)) ) (list (replace symb1 symb2 (car l))))
    (t (cons (replace symb1 symb2 (car l)) (replace symb1 symb2 (cdr l))))))

(format t "~A ~%" (replace '1 'a '(1 2 (1 b 2) 7 1)))
