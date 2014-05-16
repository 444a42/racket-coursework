#lang racket

;; open a file for reading
;; using a port

(define my-path (build-path (find-system-path 'home-dir) "jvm_dir.txt"))

(displayln my-path)

(define in 
  (open-input-file my-path))

(read-line in)

(close-input-port in)
