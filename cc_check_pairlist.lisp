(defun check_pairlist(l)
  (cond
    ((null (car l)) nil)
    ((= (length (car l)) 2) t nil)))
