(defpackage module1
  (:use cl)
  (:export print-string))


(in-package module1)

(defun print-string()
  (format t "Hello from module 1~%"))
