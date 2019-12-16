(defun plus2(a)
    (+ (car a) 2)
)

(format t "~A ~%" (plus2 (list 1 2)))

(format t "~A ~%"
    (mapcar #'plus2 '((1 a) (2 b) (3 c)))
)

(defun ispourcent(a)
    (if (not (standard-char-p a)) nil (if (char= a #\%) (format t "is a char = to % ~%")
                                                        (format t "is a char != to % ~%")) )
)

(format t "~A ~%"
    (ispourcent #\A)
)

(setq str "abcdefghijk")
(format t "~A ~% ~A ~%" (setf (subseq str 0 2) "12345") str)

(format t "~A ~%" (subseq "abcdef" 1 5) )
(format t "~A ~%" (subseq "abcdef" 0 1) )
(format t "~A ~%" (subseq "abcdef" 1 5) )

(setq l "abcdefgho")

(map nil #'princ "bacon")

(format t "~A ~%"
    (mapcar #'ispourcent )
)
