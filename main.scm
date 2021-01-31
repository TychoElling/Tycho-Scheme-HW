(define position
    (lambda (a v u t)
        (+(* (/ 1 2) (* (* t t) a)) (+ (* v t) u))))
        




(define root1
    (lambda (a b c)
        (if (> (* (* 4 a) c) (* b b)) "No solution" (- 0 (/ (- b (sqrt (- (* b b) (* 4 (* a c))))) (* 2 a))))))

(define root2
    (lambda (a b c)
        (if (> (* (* 4 a) c) (* b b)) "No solution" (- 0 (/ (+ b (sqrt (- (* b b) (* 4 (* a c))))) (* 2 a))))))





(define time-to-impact
    (lambda (initd initv)
        (root2 -4.9 initv initd )))
(define time-to-height
    (lambda (initd initv target)
        (root2 -4.9 initv (- initd target))))




(define degree2radian
    (lambda (deg)
        (/ (* deg 3.14159265359) 180.))) 
(define travel-distance-simple
    (lambda (elevation velocity angle)
        (let ((yt (root2 (- 0 4.9) elevation (sin (degree2radian angle)))))
        (* velocity yt)))) 