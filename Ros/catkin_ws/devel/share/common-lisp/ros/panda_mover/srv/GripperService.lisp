; Auto-generated. Do not edit!


(cl:in-package panda_mover-srv)


;//! \htmlinclude GripperService-request.msg.html

(cl:defclass <GripperService-request> (roslisp-msg-protocol:ros-message)
  ((input_msg
    :reader input_msg
    :initarg :input_msg
    :type cl:string
    :initform ""))
)

(cl:defclass GripperService-request (<GripperService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panda_mover-srv:<GripperService-request> is deprecated: use panda_mover-srv:GripperService-request instead.")))

(cl:ensure-generic-function 'input_msg-val :lambda-list '(m))
(cl:defmethod input_msg-val ((m <GripperService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_mover-srv:input_msg-val is deprecated.  Use panda_mover-srv:input_msg instead.")
  (input_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperService-request>) ostream)
  "Serializes a message object of type '<GripperService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'input_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'input_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperService-request>) istream)
  "Deserializes a message object of type '<GripperService-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'input_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperService-request>)))
  "Returns string type for a service object of type '<GripperService-request>"
  "panda_mover/GripperServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperService-request)))
  "Returns string type for a service object of type 'GripperService-request"
  "panda_mover/GripperServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperService-request>)))
  "Returns md5sum for a message object of type '<GripperService-request>"
  "b57e415505eb1ef8a5131e05d03cd81c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperService-request)))
  "Returns md5sum for a message object of type 'GripperService-request"
  "b57e415505eb1ef8a5131e05d03cd81c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperService-request>)))
  "Returns full string definition for message of type '<GripperService-request>"
  (cl:format cl:nil "string input_msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperService-request)))
  "Returns full string definition for message of type 'GripperService-request"
  (cl:format cl:nil "string input_msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'input_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperService-request
    (cl:cons ':input_msg (input_msg msg))
))
;//! \htmlinclude GripperService-response.msg.html

(cl:defclass <GripperService-response> (roslisp-msg-protocol:ros-message)
  ((output_msg
    :reader output_msg
    :initarg :output_msg
    :type cl:string
    :initform ""))
)

(cl:defclass GripperService-response (<GripperService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panda_mover-srv:<GripperService-response> is deprecated: use panda_mover-srv:GripperService-response instead.")))

(cl:ensure-generic-function 'output_msg-val :lambda-list '(m))
(cl:defmethod output_msg-val ((m <GripperService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_mover-srv:output_msg-val is deprecated.  Use panda_mover-srv:output_msg instead.")
  (output_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperService-response>) ostream)
  "Serializes a message object of type '<GripperService-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'output_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'output_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperService-response>) istream)
  "Deserializes a message object of type '<GripperService-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'output_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'output_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperService-response>)))
  "Returns string type for a service object of type '<GripperService-response>"
  "panda_mover/GripperServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperService-response)))
  "Returns string type for a service object of type 'GripperService-response"
  "panda_mover/GripperServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperService-response>)))
  "Returns md5sum for a message object of type '<GripperService-response>"
  "b57e415505eb1ef8a5131e05d03cd81c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperService-response)))
  "Returns md5sum for a message object of type 'GripperService-response"
  "b57e415505eb1ef8a5131e05d03cd81c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperService-response>)))
  "Returns full string definition for message of type '<GripperService-response>"
  (cl:format cl:nil "string output_msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperService-response)))
  "Returns full string definition for message of type 'GripperService-response"
  (cl:format cl:nil "string output_msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperService-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'output_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperService-response
    (cl:cons ':output_msg (output_msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GripperService)))
  'GripperService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GripperService)))
  'GripperService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperService)))
  "Returns string type for a service object of type '<GripperService>"
  "panda_mover/GripperService")