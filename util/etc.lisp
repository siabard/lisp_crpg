(in-package #:lisp_crpg)

(defparameter *swank-server* nil)

(defun start-swank ()
  (setf *swank-server* (swank:create-server)))

(defun stop-swank ()
  (swank:stop-server *swank-server*))

;; C 메모리 접근
(cffi:defcfun memset :pointer
  (ptr :pointer)
  (val :int)
  (size :int))

;; unique id 생성
(defun generate-unique-id ()
  "Generate a unique ID using a combination of timestamp and random number."
  (let ((timestamp (get-universal-time))
        (random-number (random most-positive-fixnum)))
    (format nil "~a-~a" timestamp random-number)))
