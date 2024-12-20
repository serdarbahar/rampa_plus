//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.BaxterCore
{
    [Serializable]
    public class HeadStateMsg : Message
    {
        public const string k_RosMessageName = "baxter_core_msgs/HeadState";
        public override string RosMessageName => k_RosMessageName;

        public float pan;
        public bool isTurning;
        public bool isNodding;
        public bool isPanEnabled;

        public HeadStateMsg()
        {
            this.pan = 0.0f;
            this.isTurning = false;
            this.isNodding = false;
            this.isPanEnabled = false;
        }

        public HeadStateMsg(float pan, bool isTurning, bool isNodding, bool isPanEnabled)
        {
            this.pan = pan;
            this.isTurning = isTurning;
            this.isNodding = isNodding;
            this.isPanEnabled = isPanEnabled;
        }

        public static HeadStateMsg Deserialize(MessageDeserializer deserializer) => new HeadStateMsg(deserializer);

        private HeadStateMsg(MessageDeserializer deserializer)
        {
            deserializer.Read(out this.pan);
            deserializer.Read(out this.isTurning);
            deserializer.Read(out this.isNodding);
            deserializer.Read(out this.isPanEnabled);
        }

        public override void SerializeTo(MessageSerializer serializer)
        {
            serializer.Write(this.pan);
            serializer.Write(this.isTurning);
            serializer.Write(this.isNodding);
            serializer.Write(this.isPanEnabled);
        }

        public override string ToString()
        {
            return "HeadStateMsg: " +
            "\npan: " + pan.ToString() +
            "\nisTurning: " + isTurning.ToString() +
            "\nisNodding: " + isNodding.ToString() +
            "\nisPanEnabled: " + isPanEnabled.ToString();
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
