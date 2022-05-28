#|
  This file is a part of self-contained project.

  (C) COPYRIGHT Alexey Veretennikov<alexey.veretennikov@protonmail.com>, 2022
|#
(in-package :cl-user)
(defpackage module2-asd
  (:use :cl :asdf))
(in-package :module2-asd)

(defsystem module2
  :version "0.1"
  :author "Alexey Veretennikov"
  :license "MIT"
  :components ((:module "src"
                :components
                ((:file "module2"))))
  :description "Self contained project example Module 2")
