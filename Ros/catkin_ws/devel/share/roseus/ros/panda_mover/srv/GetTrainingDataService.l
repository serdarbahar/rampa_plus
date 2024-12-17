;; Auto-generated. Do not edit!


(when (boundp 'panda_mover::GetTrainingDataService)
  (if (not (find-package "PANDA_MOVER"))
    (make-package "PANDA_MOVER"))
  (shadow 'GetTrainingDataService (find-package "PANDA_MOVER")))
(unless (find-package "PANDA_MOVER::GETTRAININGDATASERVICE")
  (make-package "PANDA_MOVER::GETTRAININGDATASERVICE"))
(unless (find-package "PANDA_MOVER::GETTRAININGDATASERVICEREQUEST")
  (make-package "PANDA_MOVER::GETTRAININGDATASERVICEREQUEST"))
(unless (find-package "PANDA_MOVER::GETTRAININGDATASERVICERESPONSE")
  (make-package "PANDA_MOVER::GETTRAININGDATASERVICERESPONSE"))

(in-package "ROS")





(defclass panda_mover::GetTrainingDataServiceRequest
  :super ros::object
  :slots (_input_msg ))

(defmethod panda_mover::GetTrainingDataServiceRequest
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

(defclass panda_mover::GetTrainingDataServiceResponse
  :super ros::object
  :slots (_trajectoryList ))

(defmethod panda_mover::GetTrainingDataServiceResponse
  (:init
   (&key
    ((:trajectoryList __trajectoryList) ())
    )
   (send-super :init)
   (setq _trajectoryList __trajectoryList)
   self)
  (:trajectoryList
   (&rest __trajectoryList)
   (if (keywordp (car __trajectoryList))
       (send* _trajectoryList __trajectoryList)
     (progn
       (if __trajectoryList (setq _trajectoryList (car __trajectoryList)))
       _trajectoryList)))
  (:serialization-length
   ()
   (+
    ;; panda_mover/ListOfPoses[] _trajectoryList
    (apply #'+ (send-all _trajectoryList :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; panda_mover/ListOfPoses[] _trajectoryList
     (write-long (length _trajectoryList) s)
     (dolist (elem _trajectoryList)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; panda_mover/ListOfPoses[] _trajectoryList
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectoryList (let (r) (dotimes (i n) (push (instance panda_mover::ListOfPoses :init) r)) r))
     (dolist (elem- _trajectoryList)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass panda_mover::GetTrainingDataService
  :super ros::object
  :slots ())

(setf (get panda_mover::GetTrainingDataService :md5sum-) "a23732bf635c86b0cb4cf0b1248e70e9")
(setf (get panda_mover::GetTrainingDataService :datatype-) "panda_mover/GetTrainingDataService")
(setf (get panda_mover::GetTrainingDataService :request) panda_mover::GetTrainingDataServiceRequest)
(setf (get panda_mover::GetTrainingDataService :response) panda_mover::GetTrainingDataServiceResponse)

(defmethod panda_mover::GetTrainingDataServiceRequest
  (:response () (instance panda_mover::GetTrainingDataServiceResponse :init)))

(setf (get panda_mover::GetTrainingDataServiceRequest :md5sum-) "a23732bf635c86b0cb4cf0b1248e70e9")
(setf (get panda_mover::GetTrainingDataServiceRequest :datatype-) "panda_mover/GetTrainingDataServiceRequest")
(setf (get panda_mover::GetTrainingDataServiceRequest :definition-)
      "string input_msg
---
panda_mover/ListOfPoses[] trajectoryList


================================================================================
MSG: panda_mover/ListOfPoses
geometry_msgs/Pose[] pose_list

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get panda_mover::GetTrainingDataServiceResponse :md5sum-) "a23732bf635c86b0cb4cf0b1248e70e9")
(setf (get panda_mover::GetTrainingDataServiceResponse :datatype-) "panda_mover/GetTrainingDataServiceResponse")
(setf (get panda_mover::GetTrainingDataServiceResponse :definition-)
      "string input_msg
---
panda_mover/ListOfPoses[] trajectoryList


================================================================================
MSG: panda_mover/ListOfPoses
geometry_msgs/Pose[] pose_list

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :panda_mover/GetTrainingDataService "a23732bf635c86b0cb4cf0b1248e70e9")


