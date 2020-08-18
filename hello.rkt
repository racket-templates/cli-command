#lang racket/base

(module+ test
  (require rackunit))

;; Notice
;; To create an executable 
;;   $ raco exe -o hello hello.rkt
;; 
;; see https://docs.racket-lang.org/raco/exe.html
;; 
;; To share stand-alone executables:
;;   $ raco distribute <directory> executable ... 
;; 
;; e.g
;;   $ raco distribute greetings hello.exe
;;
;; creates a directory "greetings" (if the directory doesn’t exist already),
;; and it copies the executables "hello.exe" and "goodbye.exe" into "greetings".
;; 
;; see https://docs.racket-lang.org/raco/exe-dist.html
;; 
;; For your convenience, we have included LICENSE-MIT and LICENSE-APACHE files.
;; If you would prefer to use a different license, replace those files with the
;; desired license.
;;
;; Some users like to add a `private/` directory, place auxiliary files there,
;; and require them in `main.rkt`.
;;
;; See the current version of the racket style guide here:
;; http://docs.racket-lang.org/style/index.html

;; Code here
(require racket/cmdline racket/port)
(define who (box "world"))
(define (pipediput)
  (for ([line (port->lines)])
  (printf "hello ~a~n" line)))
(command-line
 #:program "Greeter"
 #:once-any
 [("-n" "--name") name "Who to say hello to" (set-box! who name)]
 [("-p" "--pipe") "greet piped list" (pipediput)]
 #:args ()
 (printf "hello ~a~n" (unbox who)))


(module+ test
  ;; Any code in this `test` submodule runs when this file is run using DrRacket
  ;; or with `raco test`. The code here does not run when this file is
  ;; required by another module.
  (check-equal? (unbox who) "world"))

(module+ main
  ;; (Optional) main submodule. Put code here if you need it to be executed when
  ;; this file is run using DrRacket or the `racket` executable.  The code here
  ;; does not run when this file is required by another module. Documentation:
  ;; http://docs.racket-lang.org/guide/Module_Syntax.html#%28part._main-and-test%29
  (define who (box "world")))
