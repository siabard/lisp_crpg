(in-package #:lisp_crpg)

;; entities 는 검색 속도향상을 위해
;; hash map 을 이용한다.
(defclass entity_manager ()
  ((entities :initarg :entities
	     :accessor entities)
   ))


(defun make-entity-manager ()
  (let ((entities (make-hash-table)))
    (make-instance 'entity_manager
		   :entities entities)))

(defgeneric add-entity (entity_manager entity)
  (:documentation "Add new entity to manager"))


(defmethod add-entity (entity_manager entity)
  (setf (gethash (id entity) (entities entity_manager))
	(entities entity_manager)))
