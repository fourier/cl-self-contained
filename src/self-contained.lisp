(defpackage self-contained
  (:use cl)
  (:export print-strings))


(in-package self-contained)

(defun print-strings()
  (module1:print-string)
  (format t "Sum of 2 and 3 is ~d~%"
          (module2:sum-numbers 2 3)))
