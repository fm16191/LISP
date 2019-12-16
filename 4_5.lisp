(setq file (open (make-pathname :name "text.txt")))
(write-line (read-line file))

(defun lecture(stream)
    (setq line (read-line stream nil))
    (dotimes (i (length line))
      (if (char-equal #\% (aref line i)) (list nil) (if (null line) nil (cons line (lecture stream))))))

; (setq str "012345") =>  "012345"
; (subseq str 2) =>  "2345"
; (subseq str 3 5) =>  "34"
; (setf (subseq str 4) "abc") =>  "abc"
; str =>  "0123ab"
; (setf (subseq str 0 2) "A") =>  "A"
; str =>  "A123ab")

(with-open-file (stream file)
    (format t "~A ~%" (lecture stream)))

; (mapcar #'char= element line)
; (mapcar #'char-equal element)
; (dotimes (i (length str))
;   (char-equal (aref line i)))


(setq str "Test!")

(dolist (char (cons str nil))
 (print char))

(dotimes (i (length str))
 (print (aref str i)))



(let (value)      ; otherwise a value is a void variable
  (dotimes (number 3)
    (setq value (cons number value)))
  (format t "~A ~%" value))




(write-line "")

(setq file (open "/etc/passwd"))
(with-open-file (stream file)
    (defun lecture(file)
        (setq value (list))
        (setq line (read-line file nil))
        (if (= line nil))
        ;(format t "~A ~%" line)
        (dotimes (number (length line))
            (setq car (aref line number))
            (setq value (append value (list car))))
            ;(format t "~A ~%" value)

        (format t "~A ~%" value)
        (lecture file))

    (format t "~A ~%" (lecture file)))



(defparameter *mon_fic_sortie* (open "sortie.txt"))
(defun transfert_fic (nom sortie)
  (let ((out (open sortie :direction :output :if_exists :supersede)))
   (with-open_file (in nom)
     (loop for line = (read-line in nil 'eof)
       until (eq line 'eof)
       do (if (not (eq '#\% (char line o))))
          (progn (fresh-line out) (write-string line out))
       (close out)))))
