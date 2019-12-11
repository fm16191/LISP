(defun nombre_arguments(&rest args)
 (length args))

(format t "~A ~%" (nombre_arguments 1 2 3 4 5 6))
