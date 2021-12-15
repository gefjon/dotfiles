;; -*- mode:lisp; -*-

(cl:in-package :cl-user)

(require 'asdf)
(require 'uiop)

(setf *print-pretty* t
      *read-default-float-format* 'double-float)

(proclaim '(optimize (debug 2) (speed 2) (safety 2) (space 1) (compilation-speed 1)))

#-quicklisp
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp" (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

(ql:quickload "gefjon-utils")
(ql:quickload "alexandria")

(handler-bind (#+sbcl
               (sb-ext:name-conflict (lambda (e) (declare (ignore e))
                                       (invoke-restart 'sb-impl::take-new))))
  (use-package 'asdf 'cl-user)
  (use-package 'alexandria 'cl-user)
  (use-package 'gefjon-utils 'cl-user))

(proclaim '(inline alexandria:curry alexandria:rcurry alexandria:compose))
