//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.BaxterCore
{
    [Serializable]
    public class DigitalOutputCommandMsg : Message
    {
        public const string k_RosMessageName = "baxter_core_msgs/DigitalOutputCommand";
        public override string RosMessageName => k_RosMessageName;

        // #the name of the output
        public string name;
        // #the value to set output 
        public bool value;

        public DigitalOutputCommandMsg()
        {
            this.name = "";
            this.value = false;
        }

        public DigitalOutputCommandMsg(string name, bool value)
        {
            this.name = name;
            this.value = value;
        }

        public static DigitalOutputCommandMsg Deserialize(MessageDeserializer deserializer) => new DigitalOutputCommandMsg(deserializer);

        private DigitalOutputCommandMsg(MessageDeserializer deserializer)
        {
            deserializer.Read(out this.name);
            deserializer.Read(out this.value);
        }

        public override void SerializeTo(MessageSerializer serializer)
        {
            serializer.Write(this.name);
            serializer.Write(this.value);
        }

        public override string ToString()
        {
            return "DigitalOutputCommandMsg: " +
            "\nname: " + name.ToString() +
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
