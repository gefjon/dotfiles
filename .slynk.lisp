(uiop:define-package :.slynk.lisp
  (:mix :cl))
(in-package :.slynk.lisp)

(setf *print-pretty* t
      *print-length* nil
      *print-level* nil)

(asdf:load-system :fiveam)

(setf 5am:*on-error* :debug
      5am:*on-failure* :debug)
