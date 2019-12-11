(defun interspace(a l)
 (cond
    ((null (cdr l)) l)
    ;((atom l) l)
    (t (append (list (car l)) (list a)  (interspace a (cdr l))))))



(setf l '(a b c d e))
(interspace 'u l)
(format t "~A ~%" (interspace 'u l))
