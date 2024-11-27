//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.BaxterCore
{
    [Serializable]
    public class CollisionAvoidanceStateMsg : Message
    {
        public const string k_RosMessageName = "baxter_core_msgs/CollisionAvoidanceState";
        public override string RosMessageName => k_RosMessageName;

        public Std.HeaderMsg header;
        public bool other_arm;
        public string[] collision_object;

        public CollisionAvoidanceStateMsg()
        {
            this.header = new Std.HeaderMsg();
            this.other_arm = false;
            this.collision_object = new string[0];
        }

        public CollisionAvoidanceStateMsg(Std.HeaderMsg header, bool other_arm, string[] collision_object)
        {
            this.header = header;
            this.other_arm = other_arm;
            this.collision_object = collision_object;
        }

        public static CollisionAvoidanceStateMsg Deserialize(MessageDeserializer deserializer) => new CollisionAvoidanceStateMsg(deserializer);

        private CollisionAvoidanceStateMsg(MessageDeserializer deserializer)
        {
            this.header = Std.HeaderMsg.Deserialize(deserializer);
            deserializer.Read(out this.other_arm);
            deserializer.Read(out this.collision_object, deserializer.ReadLength());
        }

        public override void SerializeTo(MessageSerializer serializer)
        {
            serializer.Write(this.header);
            serializer.Write(this.other_arm);
            serializer.WriteLength(this.collision_object);
            serializer.Write(this.collision_object);
        }

        public override string ToString()
        {
            return "CollisionAvoidanceStateMsg: " +
            "\nheader: " + header.ToString() +
            "\nother_arm: " + other_arm.ToString() +
            "\ncollision_object: " + System.String.Join(", ", collision_object.ToList());
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