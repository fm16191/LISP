; Une fonction qui affiche "test x", x fois
; Affichage récursif

(defun mafonction(x)
 (cond
    ((<= x 0 ) nil)
    (t (progn
        (format t "MINE ~A ~%" x)
        (mafonction (- x 1))))))

(format t "~A ~%" (mafonction 1))
