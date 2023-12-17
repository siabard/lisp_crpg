;;;; lisp_crpg.asd

(asdf:defsystem #:lisp_crpg
  :description "CRPG made by lisp"
  :author "Yeonho Jang <siabard@gmail.com>"
  :license  "MIT"
  :version "0.0.1"
  :serial t
  :depends-on (#:sdl2 #:sdl2-image #:imago #:swank)
  :components ((:file "package")
               (:file "lisp_crpg")
	       (:module "util"
		:components	     
		((:file "etc")))
	       (:module "entity"
		:components
		((:file "entity_manager")
		 (:file "entity")))
	       (:module "physics"
		:components
		((:file "vec")))))
