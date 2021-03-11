;; -*- mode:lisp; -*-

(require 'asdf)
(require 'uiop)

(setf *print-pretty* t)

#-quicklisp
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp" (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

(ql:quickload "gefjon-utils")

(handler-bind (#+sbcl
               (name-conflict (lambda (e) (declare (ignore e))
                                (invoke-restart 'sb-impl::take-new))))
  (use-package 'gefjon-utils 'cl-user))
