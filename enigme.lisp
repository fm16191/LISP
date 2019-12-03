(defun enigme(X)
 (and (not (null X))
  (or (null (car X))
   (enigme (cdr X)))))
; + est une fonction n-aire
(let ((x 1) (y 2)) (+ x y))

(apply '+ '(1 2 3 4))



(defun mystere (X Y)
 (if (null Y)
  nil
  (if (eql (car Y) X)
   0
   (let ((Z (mystere X (cdr Y))))
    (and Z (+ Z 1))))))

(defun summit(l)
 (if null l) 0
  let ((x (car l)))
  (if (null x) (summit (cdr l))
   (+ x (summit(cdr l)))))
