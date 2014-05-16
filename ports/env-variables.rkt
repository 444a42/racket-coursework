#lang racket

;; get the name of the user's
;; home directory


(define home (getenv "HOME"))

(displayln home)
(directory-exists? home)

;; can also use find-system-path

(define home2 (find-system-path 'home-dir))

(displayln home2)
(directory-exists? home2)
