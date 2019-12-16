(setq file (open (make-pathname :name "text.txt")))
(write-line (read-line file))

(defun lecture(stream)
    (setq line (read-line stream nil))
    (if (null line) nil (cons line (lecture stream))))

(with-open-file (stream file)
    ; (format t "~A ~%" (read-line stream))
    (format t "~A ~%" (lecture stream)))
    ; (lecture stream))

; (with-open-file (stream "/etc/passwd")
;     (format t "~A ~%" stream)
;     (do ((line (read-line stream nil)
;                (read-line stream nil)))
;         ((null line))
;       (print line)))


(defun affiche_fc(nom)
  (with-open-file (stream nom)
    (loop for line = (read-line stream nil 'foo)
      until (eq line 'foo)
      do (print line))))

(affiche_fc "text.txt")
