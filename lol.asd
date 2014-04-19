;;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-

(defpackage #:lol-asd
  (:use :cl :asdf))
(in-package :lol-asd)

(defsystem lol
  :name "lol"
  :version "0.0.0"
  :maintainer "CHERYL THE GREAT"
  :author "CHERYL THE GREAT"
  :description "Lisp on L-something"
  :long-description "Little CLisp web framework based on Hunchentoot"
  :depends-on (hunchentoot)

  :components (
	       (:file "config")
	       
	       (:module models 
			:pathname "models"
			:components ((:file "models")))
	       (:module handlers 
			:pathname "handlers"
			:components ((:file "handlers")))
            
	       (:file "main" :depends-on ("config"))))