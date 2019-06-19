#lang racket
;;ejercicios para avanzar en el aprendizaje de la
;;programación funcional en Scheme. 
;;##############################################
(display (+ 3 (* 4 5)))
(newline)
(display (car '(a b c)))
(display "\n")
(display (cdr '(a b c)))
(display "\n")
;;##############################################
(display (- 24 (* 4 3)))
(display "\n")
(display '(A B C))
(display "\n")
(display (car '((A B) C D)))
(display "\n")
;;nes. 2 el.
(display (quote A))
(display "\n")
(display (cons 'A (quote (B C))))
(display "\n")
(display (list 'A '(B C)))
(display "\n")
(display (cons 'A '(B C)) )
(display "\n")
(display (cons 'A (quote (B C))))
(display "\n")
(display ((lambda (x y) (list x y)) 3 4))
(display "\n")
(display ((lambda (x) (+ x 2))3))
(display "\n")
(display (eval (list + 3 4)))
(display "\n")
(display (null? (list)))
(display "\n")
(display ((car (list + - * /)) 2 3))
(display "\n")

;;Devuelve b
(define (segundo Lista)
  (car (cdr Lista)))
(segundo '(a b c d))
(display (segundo '(a b c d)))
(display "\n")

;;Defina la función x2
(define (cuadrado A)
  (eval( * A A)))
(display(cuadrado 2))
(display "\n")
;;¿Qué realizan la siguientes funciones?

;;busca s en t y devuelve la lista q queda tras ir eliminando
;;los elementos q no eran iguales
(define (y s t)
  (cond
    ((null? t) '() )
    ((equal? s (car t)) t)
    (else (y s (cdr t)))))
(display(y 2 '(1 1 3 4 5 2 3)))
(display "\n")

;; elimina el ultimo elemento
(define (nose Lista)
  (if (null? (cdr Lista))
    '()
    (cons (car Lista) (nose (cdr Lista)))))

(display(nose '(1 1 3 4 5 2 3 4)))
(display "\n")
(display(nose '(1 1)))
(display "\n")

;;Suma recursiva
(define (algo X)
  (cond
    ((null? X) 0)
    (else (+ (car X) (algo(cdr X))))))
(display(algo '(1 1)))
(display "\n")
(display(algo '(1 1 3 4 5 2 3 4)))
(display "\n")
;;¿En qué falla la siguiente función?-> Falla si no lo encuentra
;; Dice si X es igual o no a alguno de los elementos de la lista L
(define (busca L X) 
  (if (equal? (car L) X) 
    #t 
    (busca (cdr L) X)))

(display(busca '(1 1 3 4 5 2 3 4) 5 ))
(display "\n")
;;este caso falla
(display(busca '(1 1 3 4 5 2 3 4) 6 ))
(display "\n")
