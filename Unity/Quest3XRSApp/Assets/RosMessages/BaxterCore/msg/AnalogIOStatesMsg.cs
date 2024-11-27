//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.BaxterCore
{
    [Serializable]
    public class AnalogIOStatesMsg : Message
    {
        public const string k_RosMessageName = "baxter_core_msgs/AnalogIOStates";
        public override string RosMessageName => k_RosMessageName;

        public string[] names;
        public AnalogIOStateMsg[] states;

        public AnalogIOStatesMsg()
        {
            this.names = new string[0];
            this.states = new AnalogIOStateMsg[0];
        }

        public AnalogIOStatesMsg(string[] names, AnalogIOStateMsg[] states)
        {
            this.names = names;
            this.states = states;
        }

        public static AnalogIOStatesMsg Deserialize(MessageDeserializer deserializer) => new AnalogIOStatesMsg(deserializer);

        private AnalogIOStatesMsg(MessageDeserializer deserializer)
        {
            deserializer.Read(out this.names, deserializer.ReadLength());
            deserializer.Read(out this.states, AnalogIOStateMsg.Deserialize, deserializer.ReadLength());
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
            return "AnalogIOStatesMsg: " +
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