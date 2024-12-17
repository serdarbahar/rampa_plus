;; Auto-generated. Do not edit!


(when (boundp 'panda_mover::GripperService)
  (if (not (find-package "PANDA_MOVER"))
    (make-package "PANDA_MOVER"))
  (shadow 'GripperService (find-package "PANDA_MOVER")))
(unless (find-package "PANDA_MOVER::GRIPPERSERVICE")
  (make-package "PANDA_MOVER::GRIPPERSERVICE"))
(unless (find-package "PANDA_MOVER::GRIPPERSERVICEREQUEST")
  (make-package "PANDA_MOVER::GRIPPERSERVICEREQUEST"))
(unless (find-package "PANDA_MOVER::GRIPPERSERVICERESPONSE")
  (make-package "PANDA_MOVER::GRIPPERSERVICERESPONSE"))

(in-package "ROS")





(defclass panda_mover::GripperServiceRequest
  :super ros::object
  :slots (_input_msg ))

(defmethod panda_mover::GripperServiceRequest
  (:init
   (&key
    ((:input_msg __input_msg) "")
    )
   (send-super :init)
   (setq _input_msg (string __input_msg))
   self)
  (:input_msg
   (&optional __input_msg)
   (if __input_msg (setq _input_msg __input_msg)) _input_msg)
  (:serialization-length
   ()
   (+
    ;; string _input_msg
    4 (length _input_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _input_msg
       (write-long (length _input_msg) s) (princ _input_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _input_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _input_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass panda_mover::GripperServiceResponse
  :super ros::object
  :slots (_output_msg ))

(defmethod panda_mover::GripperServiceResponse
  (:init
   (&key
    ((:output_msg __output_msg) "")
    )
   (send-super :init)
   (setq _output_msg (string __output_msg))
   self)
  (:output_msg
   (&optional __output_msg)
   (if __output_msg (setq _output_msg __output_msg)) _output_msg)
  (:serialization-length
   ()
   (+
    ;; string _output_msg
    4 (length _output_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _output_msg
       (write-long (length _output_msg) s) (princ _output_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _output_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _output_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass panda_mover::GripperService
  :super ros::object
  :slots ())

(setf (get panda_mover::GripperService :md5sum-) "b57e415505eb1ef8a5131e05d03cd81c")
(setf (get panda_mover::GripperService :datatype-) "panda_mover/GripperService")
(setf (get panda_mover::GripperService :request) panda_mover::GripperServiceRequest)
(setf (get panda_mover::GripperService :response) panda_mover::GripperServiceResponse)

(defmethod panda_mover::GripperServiceRequest
  (:response () (instance panda_mover::GripperServiceResponse :init)))

(setf (get panda_mover::GripperServiceRequest :md5sum-) "b57e415505eb1ef8a5131e05d03cd81c")
(setf (get panda_mover::GripperServiceRequest :datatype-) "panda_mover/GripperServiceRequest")
(setf (get panda_mover::GripperServiceRequest :definition-)
      "string input_msg
---
string output_msg
")

(setf (get panda_mover::GripperServiceResponse :md5sum-) "b57e415505eb1ef8a5131e05d03cd81c")
(setf (get panda_mover::GripperServiceResponse :datatype-) "panda_mover/GripperServiceResponse")
(setf (get panda_mover::GripperServiceResponse :definition-)
      "string input_msg
---
string output_msg
")



(provide :panda_mover/GripperService "b57e415505eb1ef8a5131e05d03cd81c")


