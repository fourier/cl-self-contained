(defpackage module2
  (:use cl)
  (:export sum-numbers))


(in-package module2)

(defun sum-numbers(x y)
  (+ x y))
