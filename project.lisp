#-quicklisp (require 'asdf)

(eval-when (:compile-toplevel :execute :load-toplevel)
  ;; determine current file to get the path from
  (let ((current-file (or common-lisp:*compile-file-truename* *load-truename*)))
    (when current-file
      ;; construct the directory path of the current file
      (let* ((system-path (make-pathname :host (pathname-host current-file)
                                         :directory (pathname-directory current-file)))
             (systems
              (mapcar #'pathname-name
                      (directory
                       ;; combine path to the current file with the *.asd pathname to get the 
                       ;; list of asd files
                       (merge-pathnames system-path (make-pathname :type "asd" :name :wild))))))
        (print  systems)
        #-quicklisp
        (progn
          (require 'asdf)
          (asdf/source-registry:clear-source-registry)
          (asdf/source-registry:ensure-source-registry
           `(:SOURCE-REGISTRY
             (:tree ,system-path)
             :ignore-inherited-configuration))
          ;; load all .asd files in sequence
          (dolist (system systems)
            (asdf:oos 'asdf:load-op system)))
        #+quicklisp
        (progn
          (dolist (system systems)
            (ql:quickload system)))))))
        
