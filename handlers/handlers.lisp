; -*- mode: common-lisp -*-

(in-package :web-app-name)
(use-package :hunchentoot)

(defvar *template-root* "templates/")

(defun template-string (path)
  (with-open-file (stream (concatenate 'string *template-root* path))
    (let ((data (make-string (file-length stream)))) 
      (read-sequence data stream) data)))

(defun main-handler () (template-string "index.html"))