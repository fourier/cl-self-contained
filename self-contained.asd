#|
  This file is a part of self-contained project.

  (C) COPYRIGHT Alexey Veretennikov<alexey.veretennikov@protonmail.com>, 2022
|#
(in-package :cl-user)
(defpackage self-contained-asd
  (:use :cl :asdf))
(in-package :self-contained-asd)

(defsystem self-contained
  :version "0.1"
  :author "Alexey Veretennikov"
  :license "MIT"
  :depends-on (module1
               module2)
  :components ((:module "src"
                :components
                ((:file "self-contained"))))
  :description "Self contained project example")
