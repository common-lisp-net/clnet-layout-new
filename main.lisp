; -*- mode: common-lisp -*-

(in-package :web-app-name)
(use-package :hunchentoot)

(defvar *my-acceptor* nil)

;;; Initialize-application 
(defun initialize-application (&key port)

  (setf *dispatch-table* 
    (nconc 
     (list 'dispatch-easy-handlers
	   (create-folder-dispatcher-and-handler "/static/" "static/"))
     (mapcar (lambda (args) 
	       (apply 'create-prefix-dispatcher args)) 
	     '(("/" main-handler)))))

  ;; If we are restarting, say for example when we are developing,
  ;; then we need to stop any existing web server.
  (when *my-acceptor*
    (stop *my-acceptor*))

  ;; Start the web server.
  (setf *my-acceptor*
        (start (make-instance 'easy-acceptor :port port))))