//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.Ur10Mover
{
    [Serializable]
    public class GripperServiceRequest : Message
    {
        public const string k_RosMessageName = "ur10_mover/GripperService";
        public override string RosMessageName => k_RosMessageName;

        public string input_msg;

        public GripperServiceRequest()
        {
            this.input_msg = "";
        }

        public GripperServiceRequest(string input_msg)
        {
            this.input_msg = input_msg;
        }

        public static GripperServiceRequest Deserialize(MessageDeserializer deserializer) => new GripperServiceRequest(deserializer);

        private GripperServiceRequest(MessageDeserializer deserializer)
        {
            deserializer.Read(out this.input_msg);
        }

        public override void SerializeTo(MessageSerializer serializer)
        {
            serializer.Write(this.input_msg);
        }

        public override string ToString()
        {
            return "GripperServiceRequest: " +
            "\ninput_msg: " + input_msg.ToString();
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
