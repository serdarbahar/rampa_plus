//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.Unity
{
    [Serializable]
    public class IKHelperUnityResponse : Message
    {
        public const string k_RosMessageName = "unity/IKHelperUnity";
        public override string RosMessageName => k_RosMessageName;

        public Sensor.JointStateMsg[] joints;
        public bool[] isValid;
        public const byte RESULT_INVALID = 0;
        public byte[] result_type;

        public IKHelperUnityResponse()
        {
            this.joints = new Sensor.JointStateMsg[0];
            this.isValid = new bool[0];
            this.result_type = new byte[0];
        }

        public IKHelperUnityResponse(Sensor.JointStateMsg[] joints, bool[] isValid, byte[] result_type)
        {
            this.joints = joints;
            this.isValid = isValid;
            this.result_type = result_type;
        }

        public static IKHelperUnityResponse Deserialize(MessageDeserializer deserializer) => new IKHelperUnityResponse(deserializer);

        private IKHelperUnityResponse(MessageDeserializer deserializer)
        {
            deserializer.Read(out this.joints, Sensor.JointStateMsg.Deserialize, deserializer.ReadLength());
            deserializer.Read(out this.isValid, sizeof(bool), deserializer.ReadLength());
            deserializer.Read(out this.result_type, sizeof(byte), deserializer.ReadLength());
        }

        public override void SerializeTo(MessageSerializer serializer)
        {
            serializer.WriteLength(this.joints);
            serializer.Write(this.joints);
            serializer.WriteLength(this.isValid);
            serializer.Write(this.isValid);
            serializer.WriteLength(this.result_type);
            serializer.Write(this.result_type);
        }

        public override string ToString()
        {
            return "IKHelperUnityResponse: " +
            "\njoints: " + System.String.Join(", ", joints.ToList()) +
            "\nisValid: " + System.String.Join(", ", isValid.ToList()) +
            "\nresult_type: " + System.String.Join(", ", result_type.ToList());
        }

#if UNITY_EDITOR
        [UnityEditor.InitializeOnLoadMethod]
#else
        [UnityEngine.RuntimeInitializeOnLoadMethod]
#endif
        public static void Register()
        {
            MessageRegistry.Register(k_RosMessageName, Deserialize, MessageSubtopic.Response);
        }
    }
}