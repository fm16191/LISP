(do ((x 0 (+ 2 x)) ;Stuff
   (y 20 ( - y 2))) ;Stuff
   ((= x y)(+ x y)) ;Faire la boucle tant que la Condition de test est fausse || Retour de la fonction
   (format t "~% x = ~d  y = ~d" x y)
)
