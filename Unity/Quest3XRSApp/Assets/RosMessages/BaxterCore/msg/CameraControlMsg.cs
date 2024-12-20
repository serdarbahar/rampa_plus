//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.BaxterCore
{
    [Serializable]
    public class CameraControlMsg : Message
    {
        public const string k_RosMessageName = "baxter_core_msgs/CameraControl";
        public override string RosMessageName => k_RosMessageName;

        public int id;
        public int value;
        public const int CAMERA_CONTROL_EXPOSURE = 100;
        public const int CAMERA_CONTROL_GAIN = 101;
        public const int CAMERA_CONTROL_WHITE_BALANCE_R = 102;
        public const int CAMERA_CONTROL_WHITE_BALANCE_G = 103;
        public const int CAMERA_CONTROL_WHITE_BALANCE_B = 104;
        public const int CAMERA_CONTROL_WINDOW_X = 105;
        public const int CAMERA_CONTROL_WINDOW_Y = 106;
        public const int CAMERA_CONTROL_FLIP = 107;
        public const int CAMERA_CONTROL_MIRROR = 108;
        public const int CAMERA_CONTROL_RESOLUTION_HALF = 109;

        public CameraControlMsg()
        {
            this.id = 0;
            this.value = 0;
        }

        public CameraControlMsg(int id, int value)
        {
            this.id = id;
            this.value = value;
        }

        public static CameraControlMsg Deserialize(MessageDeserializer deserializer) => new CameraControlMsg(deserializer);

        private CameraControlMsg(MessageDeserializer deserializer)
        {
            deserializer.Read(out this.id);
            deserializer.Read(out this.value);
        }

        public override void SerializeTo(MessageSerializer serializer)
        {
            serializer.Write(this.id);
            serializer.Write(this.value);
        }

        public override string ToString()
        {
            return "CameraControlMsg: " +
            "\nid: " + id.ToString() +
            "\nvalue: " + value.ToString();
        }

#if UNITY_EDITOR
        [UnityEditor.InitializeOnLoadMethod]
#else
        [UnityEngine.RuntimeInitializeOnLoadMethod]
#endif
        public static void Register()
        {
            MessageRegistry.Register(k_RosMessageName, Deserialize);
        }
    }
}
