//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.BaxterCore
{
    [Serializable]
    public class EndpointStatesMsg : Message
    {
        public const string k_RosMessageName = "baxter_core_msgs/EndpointStates";
        public override string RosMessageName => k_RosMessageName;

        public string[] names;
        public EndpointStateMsg[] states;

        public EndpointStatesMsg()
        {
            this.names = new string[0];
            this.states = new EndpointStateMsg[0];
        }

        public EndpointStatesMsg(string[] names, EndpointStateMsg[] states)
        {
            this.names = names;
            this.states = states;
        }

        public static EndpointStatesMsg Deserialize(MessageDeserializer deserializer) => new EndpointStatesMsg(deserializer);

        private EndpointStatesMsg(MessageDeserializer deserializer)
        {
            deserializer.Read(out this.names, deserializer.ReadLength());
            deserializer.Read(out this.states, EndpointStateMsg.Deserialize, deserializer.ReadLength());
        }

        public override void SerializeTo(MessageSerializer serializer)
        {
            serializer.WriteLength(this.names);
            serializer.Write(this.names);
            serializer.WriteLength(this.states);
            serializer.Write(this.states);
        }

        public override string ToString()
        {
            return "EndpointStatesMsg: " +
            "\nnames: " + System.String.Join(", ", names.ToList()) +
            "\nstates: " + System.String.Join(", ", states.ToList());
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
