;; Auto-generated. Do not edit!


(when (boundp 'panda_mover::ListOfFloats)
  (if (not (find-package "PANDA_MOVER"))
    (make-package "PANDA_MOVER"))
  (shadow 'ListOfFloats (find-package "PANDA_MOVER")))
(unless (find-package "PANDA_MOVER::LISTOFFLOATS")
  (make-package "PANDA_MOVER::LISTOFFLOATS"))

(in-package "ROS")
;;//! \htmlinclude ListOfFloats.msg.html


(defclass panda_mover::ListOfFloats
  :super ros::object
  :slots (_list ))

(defmethod panda_mover::ListOfFloats
  (:init
   (&key
    ((:list __list) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _list __list)
   self)
  (:list
   (&optional __list)
   (if __list (setq _list __list)) _list)
  (:serialization-length
   ()
   (+
    ;; float64[] _list
    (* 8    (length _list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _list
     (write-long (length _list) s)
     (dotimes (i (length _list))
       (sys::poke (elt _list i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _list (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _list i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get panda_mover::ListOfFloats :md5sum-) "c927dcaf1d3ff0b9aa7fd844cd956a22")
(setf (get panda_mover::ListOfFloats :datatype-) "panda_mover/ListOfFloats")
(setf (get panda_mover::ListOfFloats :definition-)
      "float64[] list
")



(provide :panda_mover/ListOfFloats "c927dcaf1d3ff0b9aa7fd844cd956a22")


