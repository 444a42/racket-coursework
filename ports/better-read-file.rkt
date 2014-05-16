#lang racket

(define (read-file in)
  (let ([foo (port->lines in)])
    (for ([bar foo]) (displayln bar))))

(let ([my-path (build-path (find-system-path 'home-dir) "test")])
  (call-with-input-file my-path read-file))

