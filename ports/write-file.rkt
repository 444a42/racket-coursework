#lang racket

;; set a variable for file name

(define new-file (build-path (find-system-path 'home-dir) "test"))

;; define a new file and write to it

;(define out 
;  (open-output-file new-file #:exists 'truncate #:mode 'text))
;(display "hello world 1" out)
;(close-output-port out)

;; use call-with-output-file, which takes a function to 
;; call with the output port; when the function returns, 
;; the port is closed.

;(call-with-input-file new-file
;  (lambda (in)
;         (read-line in)))

;; create new function to read the file

(define (easy-read-file file)
  (call-with-input-file file
  (lambda (in)
         (read-line in))))

;; call the new function to read the file

(easy-read-file new-file)

;; create a new function to write to the file

(define (easy-write-file file)
  (call-with-output-file file #:exists 'append #:mode 'text
                        (lambda (out)
                          (display "hello world 1" out)
                          (newline out)
                          (display "hello world 2" out))))

(easy-write-file new-file)
;;(easy-read-file new-file)
