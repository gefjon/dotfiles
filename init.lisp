;; -*- mode:lisp; -*-

(require 'asdf)
(require 'uiop)

(setf *print-pretty* t)

#-quicklisp
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp" (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

(asdf:initialize-source-registry
 '(:source-registry
   (:tree "~/sift")
   :inherit-configuration))
