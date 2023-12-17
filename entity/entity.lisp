(in-package #:lisp_crpg)

;;;; entity
;;;; entity는 고유의 ID와
;;;; entity를 구성하는 component로 이루어진다.

(defclass entity ()
  ((id :initarg :id
       :accessor id)
   (tag :initarg :tag
	:accessor tag)
   (alive :initarg :alive
	  :accessor alive)
   (pos :initarg :pos
	:accessor pos)
   ))

(defun make-entity (tag &optional pos)
  (let ((id (generate-unique-id))
	(default-pos (make-vec2 )))
    (make-instance 'entity
		   :id id
		   :tag tag
		   :alive T
		   :pos (cond ((null pos) default-pos)
			      (t pos)))
    ))
