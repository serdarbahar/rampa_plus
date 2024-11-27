//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.BaxterCore
{
    [Serializable]
    public class ListCamerasRequest : Message
    {
        public const string k_RosMessageName = "baxter_core_msgs/ListCameras";
        public override string RosMessageName => k_RosMessageName;


        public ListCamerasRequest()
        {
        }
        public static ListCamerasRequest Deserialize(MessageDeserializer deserializer) => new ListCamerasRequest(deserializer);

        private ListCamerasRequest(MessageDeserializer deserializer)
        {
        }

        public override void SerializeTo(MessageSerializer serializer)
        {
        }

        public override string ToString()
        {
            return "ListCamerasRequest: ";
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
