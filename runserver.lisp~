(ql:quickload :hunchentoot)

; some code that looks inside of the folders 
; and writes an appropriate asd file???

; or put the above in a compile server kind of thing?

(require "asdf")
(push "" asdf:*central-registry*)
(asdf:operate 'asdf:load-op 'lol)
(web-app-name:initialize-application :port 8000)