(in-package #:lisp_crpg)

(defun gamemain()
  (let ((camera-width 640)
	(camera-height 480))
    (sdl2:with-init (:everything)
      (sdl2:with-window (win :title "CRPG" :flags '(:shown)
			     :w 800 :h 600)
	(sdl2:with-renderer (renderer win :flags '(:accelerated :targettexture :presentvsync))
	  (sdl2:with-event-loop (:method :poll)
	    (:quit ()
		   t)))))))