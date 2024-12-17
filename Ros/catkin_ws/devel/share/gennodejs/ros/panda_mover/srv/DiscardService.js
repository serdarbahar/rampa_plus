// Auto-generated. Do not edit!

// (in-package panda_mover.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class DiscardServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('input_msg')) {
        this.input_msg = initObj.input_msg
      }
      else {
        this.input_msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiscardServiceRequest
    // Serialize message field [input_msg]
    bufferOffset = _serializer.string(obj.input_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiscardServiceRequest
    let len;
    let data = new DiscardServiceRequest(null);
    // Deserialize message field [input_msg]
    data.input_msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.input_msg);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'panda_mover/DiscardServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2beecd7d8a70aad2184c84345d0cd8d3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string input_msg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DiscardServiceRequest(null);
    if (msg.input_msg !== undefined) {
      resolved.input_msg = msg.input_msg;
    }
    else {
      resolved.input_msg = ''
    }

    return resolved;
    }
};

class DiscardServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('output_msg')) {
        this.output_msg = initObj.output_msg
      }
      else {
        this.output_msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiscardServiceResponse
    // Serialize message field [output_msg]
    bufferOffset = _serializer.string(obj.output_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiscardServiceResponse
    let len;
    let data = new DiscardServiceResponse(null);
    // Deserialize message field [output_msg]
    data.output_msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.output_msg);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'panda_mover/DiscardServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef13bd7685401359f42466106b070713';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string output_msg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DiscardServiceResponse(null);
    if (msg.output_msg !== undefined) {
      resolved.output_msg = msg.output_msg;
    }
    else {
      resolved.output_msg = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: DiscardServiceRequest,
  Response: DiscardServiceResponse,
  md5sum() { return 'b57e415505eb1ef8a5131e05d03cd81c'; },
  datatype() { return 'panda_mover/DiscardService'; }
};
