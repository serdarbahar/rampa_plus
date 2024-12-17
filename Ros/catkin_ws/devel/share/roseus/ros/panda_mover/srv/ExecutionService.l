;; Auto-generated. Do not edit!


(when (boundp 'panda_mover::ExecutionService)
  (if (not (find-package "PANDA_MOVER"))
    (make-package "PANDA_MOVER"))
  (shadow 'ExecutionService (find-package "PANDA_MOVER")))
(unless (find-package "PANDA_MOVER::EXECUTIONSERVICE")
  (make-package "PANDA_MOVER::EXECUTIONSERVICE"))
(unless (find-package "PANDA_MOVER::EXECUTIONSERVICEREQUEST")
  (make-package "PANDA_MOVER::EXECUTIONSERVICEREQUEST"))
(unless (find-package "PANDA_MOVER::EXECUTIONSERVICERESPONSE")
  (make-package "PANDA_MOVER::EXECUTIONSERVICERESPONSE"))

(in-package "ROS")





(defclass panda_mover::ExecutionServiceRequest
  :super ros::object
  :slots (_joint_states ))

(defmethod panda_mover::ExecutionServiceRequest
  (:init
   (&key
    ((:joint_states __joint_states) ())
    )
   (send-super :init)
   (setq _joint_states __joint_states)
   self)
  (:joint_states
   (&rest __joint_states)
   (if (keywordp (car __joint_states))
       (send* _joint_states __joint_states)
     (progn
       (if __joint_states (setq _joint_states (car __joint_states)))
       _joint_states)))
  (:serialization-length
   ()
   (+
    ;; panda_mover/ListOfFloats[] _joint_states
    (apply #'+ (send-all _joint_states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; panda_mover/ListOfFloats[] _joint_states
     (write-long (length _joint_states) s)
     (dolist (elem _joint_states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; panda_mover/ListOfFloats[] _joint_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_states (let (r) (dotimes (i n) (push (instance panda_mover::ListOfFloats :init) r)) r))
     (dolist (elem- _joint_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass panda_mover::ExecutionServiceResponse
  :super ros::object
  :slots (_output_msg ))

(defmethod panda_mover::ExecutionServiceResponse
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

(defclass panda_mover::ExecutionService
  :super ros::object
  :slots ())

(setf (get panda_mover::ExecutionService :md5sum-) "200ed2e45e29d7b67fa3d65a61af734d")
(setf (get panda_mover::ExecutionService :datatype-) "panda_mover/ExecutionService")
(setf (get panda_mover::ExecutionService :request) panda_mover::ExecutionServiceRequest)
(setf (get panda_mover::ExecutionService :response) panda_mover::ExecutionServiceResponse)

(defmethod panda_mover::ExecutionServiceRequest
  (:response () (instance panda_mover::ExecutionServiceResponse :init)))

(setf (get panda_mover::ExecutionServiceRequest :md5sum-) "200ed2e45e29d7b67fa3d65a61af734d")
(setf (get panda_mover::ExecutionServiceRequest :datatype-) "panda_mover/ExecutionServiceRequest")
(setf (get panda_mover::ExecutionServiceRequest :definition-)
      "panda_mover/ListOfFloats[] joint_states

================================================================================
MSG: panda_mover/ListOfFloats
---
string output_msg

")

(setf (get panda_mover::ExecutionServiceResponse :md5sum-) "200ed2e45e29d7b67fa3d65a61af734d")
(setf (get panda_mover::ExecutionServiceResponse :datatype-) "panda_mover/ExecutionServiceResponse")
(setf (get panda_mover::ExecutionServiceResponse :definition-)
      "panda_mover/ListOfFloats[] joint_states

================================================================================
MSG: panda_mover/ListOfFloats
---
string output_msg

")



(provide :panda_mover/ExecutionService "200ed2e45e29d7b67fa3d65a61af734d")


