;; Auto-generated. Do not edit!


(when (boundp 'panda_mover::TrainingDataService)
  (if (not (find-package "PANDA_MOVER"))
    (make-package "PANDA_MOVER"))
  (shadow 'TrainingDataService (find-package "PANDA_MOVER")))
(unless (find-package "PANDA_MOVER::TRAININGDATASERVICE")
  (make-package "PANDA_MOVER::TRAININGDATASERVICE"))
(unless (find-package "PANDA_MOVER::TRAININGDATASERVICEREQUEST")
  (make-package "PANDA_MOVER::TRAININGDATASERVICEREQUEST"))
(unless (find-package "PANDA_MOVER::TRAININGDATASERVICERESPONSE")
  (make-package "PANDA_MOVER::TRAININGDATASERVICERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass panda_mover::TrainingDataServiceRequest
  :super ros::object
  :slots (_input_msg _pose_list _context ))

(defmethod panda_mover::TrainingDataServiceRequest
  (:init
   (&key
    ((:input_msg __input_msg) "")
    ((:pose_list __pose_list) ())
    ((:context __context) 0.0)
    )
   (send-super :init)
   (setq _input_msg (string __input_msg))
   (setq _pose_list __pose_list)
   (setq _context (float __context))
   self)
  (:input_msg
   (&optional __input_msg)
   (if __input_msg (setq _input_msg __input_msg)) _input_msg)
  (:pose_list
   (&rest __pose_list)
   (if (keywordp (car __pose_list))
       (send* _pose_list __pose_list)
     (progn
       (if __pose_list (setq _pose_list (car __pose_list)))
       _pose_list)))
  (:context
   (&optional __context)
   (if __context (setq _context __context)) _context)
  (:serialization-length
   ()
   (+
    ;; string _input_msg
    4 (length _input_msg)
    ;; geometry_msgs/Pose[] _pose_list
    (apply #'+ (send-all _pose_list :serialization-length)) 4
    ;; float64 _context
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _input_msg
       (write-long (length _input_msg) s) (princ _input_msg s)
     ;; geometry_msgs/Pose[] _pose_list
     (write-long (length _pose_list) s)
     (dolist (elem _pose_list)
       (send elem :serialize s)
       )
     ;; float64 _context
       (sys::poke _context (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _input_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _input_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose[] _pose_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_list (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _pose_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _context
     (setq _context (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass panda_mover::TrainingDataServiceResponse
  :super ros::object
  :slots (_output_msg ))

(defmethod panda_mover::TrainingDataServiceResponse
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

(defclass panda_mover::TrainingDataService
  :super ros::object
  :slots ())

(setf (get panda_mover::TrainingDataService :md5sum-) "2553c089c44939195fc3dab519dd2853")
(setf (get panda_mover::TrainingDataService :datatype-) "panda_mover/TrainingDataService")
(setf (get panda_mover::TrainingDataService :request) panda_mover::TrainingDataServiceRequest)
(setf (get panda_mover::TrainingDataService :response) panda_mover::TrainingDataServiceResponse)

(defmethod panda_mover::TrainingDataServiceRequest
  (:response () (instance panda_mover::TrainingDataServiceResponse :init)))

(setf (get panda_mover::TrainingDataServiceRequest :md5sum-) "2553c089c44939195fc3dab519dd2853")
(setf (get panda_mover::TrainingDataServiceRequest :datatype-) "panda_mover/TrainingDataServiceRequest")
(setf (get panda_mover::TrainingDataServiceRequest :definition-)
      "string input_msg
geometry_msgs/Pose[] pose_list
float64 context

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
---
string output_msg
")

(setf (get panda_mover::TrainingDataServiceResponse :md5sum-) "2553c089c44939195fc3dab519dd2853")
(setf (get panda_mover::TrainingDataServiceResponse :datatype-) "panda_mover/TrainingDataServiceResponse")
(setf (get panda_mover::TrainingDataServiceResponse :definition-)
      "string input_msg
geometry_msgs/Pose[] pose_list
float64 context

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
---
string output_msg
")



(provide :panda_mover/TrainingDataService "2553c089c44939195fc3dab519dd2853")


