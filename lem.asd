(cl:in-package :cl-user)

(pushnew :lem-use-inquisitor *features*)

#-asdf(require :asdf)

#-uiop(require :uiop)

(defpackage :lem-asd
  (:use :cl :asdf))

(in-package :lem-asd)

(defsystem lem
  :version "0.1"
  :depends-on (:uiop
               :cl-charms
               :cl-fad
               :alexandria
               #+sbcl :sb-posix
               #+sbcl :sb-introspect
               :swank
               :trivial-gray-streams
               :cl-ppcre
               #+lem-use-inquisitor :inquisitor
               :babel
               :lem-base)
  :serial t
  :components ((:module "lem-core"
                :serial t
                :components ((:file "history")
                             (:file "package")
                             (:file "errors")
                             (:file "key")
                             (:file "macros")
                             (:file "attribute")
                             (:file "kill")
                             (:file "file-ext")
                             (:file "window")
                             (:file "modeline")
                             (:file "defcommand")
                             (:file "mode")
                             (:file "keymap")
                             (:file "timer")
                             (:file "event")
                             (:file "interp")
                             (:file "input")
                             (:file "overlay")
                             (:file "streams")
                             (:file "fundamental-mode")
                             (:file "comp")
                             (:file "minibuf")
                             (:file "typeout")
                             (:file "lem")

                             (:file "command")
                             (:file "file-command")
                             (:file "window-command")
                             (:file "help-command")
                             (:file "word-command")
                             (:file "sexp-command")

                             (:file "listener-mode")
                             (:file "kbdmacro")
                             (:file "isearch")
                             (:file "showparen")
                             (:file "list-buffers")
                             (:file "line-numbers")
                             (:file "sourcelist")
                             (:file "grep")
                             (:file "lisp-mode")
                             (:file "go-mode")
                             (:file "dired")
                             (:file "abbrev")

                             (:file "init")
                             
                             (:file "interface")

                             (:file "term")
                             (:file "ncurses")

                             (:file "color-theme")))))
