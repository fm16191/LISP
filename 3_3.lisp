; (defun posbis(i l)
;  (+ i l))

(defun pos(l &optional (i 0))
 (cond
   ((null (cdr l)) (list (+ (car l) i)))
   (t
       (cons (+ i (car l)) (pos (cdr l) (+ i 1))))))
; Appel récursif estnon terminal car enveloppé par la fonction cons
; Si la fonction est associatuve et possède 1 élément neutre on peut dérécursiver sinon pas possible

(format t "~A ~%" (pos '(1 2 3 4 5 6 7 8 9)))

(defun postderecer(l &optional (i 0) (Res ()))
 (cond
   ((null l) Res)
   ((consp l)(postderecer (cdr l) (+ i 1) (append (list (+ i (car l))) Res)))))


(format t "~A " (mapcar 'list '(a b c) '(1 2 3) '(x y z)))
