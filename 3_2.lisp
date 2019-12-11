(defun precede(symb ch &optional (i 1) (Res ()))
 (cond
   ((= i (length ch)) Res)
   ((eq (aref ch i) symb))
   (t (precede symb ch (+ i 1) Res))))

(format t "~A ~%" (precede #\a "abracadabra"))


(defun iter(symb v)
  (setf res nil)
  (do ((i 1 (+ i 1)))
      ((eq i (length v)))
      (if (eq symb (aref v i))))
  (setf res (cons (aref v (- i 1)) res)
            (nil))
  res)

(defun precede2(symb v)
  (cond
    ((eq 0 (length v)) "pb")
    ((eq 1 (length v)) nil)
    (t (iter symb v))))
