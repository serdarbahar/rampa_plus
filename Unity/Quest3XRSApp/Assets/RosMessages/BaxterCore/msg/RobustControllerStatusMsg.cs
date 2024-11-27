//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.BaxterCore
{
    [Serializable]
    public class RobustControllerStatusMsg : Message
    {
        public const string k_RosMessageName = "baxter_core_msgs/RobustControllerStatus";
        public override string RosMessageName => k_RosMessageName;

        //  True if the RC is enabled and running, false if not.
        public bool isEnabled;
        //  The state of the RC with respect to its completion goal.  One of
        //  NOT_COMPLETE, COMPLETE_W_FAILURE, or COMPLETE_W_SUCCESS
        public int complete;
        public const int NOT_COMPLETE = 0;
        public const int COMPLETE_W_FAILURE = 1;
        public const int COMPLETE_W_SUCCESS = 2;
        //  Identifies the sender of the Enable message that the RC is using for its
        //  commands.  This should correspond to the "uid" field of a recently published
        //  RC *Enable message.
        public string controlUid;
        //  Set to true when the RC self-disables as a result of too much time elapsing
        //  without receiving an Enable message.
        public bool timedOut;
        //  A list of relevant error codes.  Error codes are defined by the individual
        //  robust controllers, consult a robust controller's documentation to see what
        //  error codes it generates.
        public string[] errorCodes;
        //  A list of current labels for the RC's current state. For example, "fastapproach",
        //  "slowapproach", etc. Used primarily for the blended RCs, other RCs can leave this
        //  blank. This will probably contains just one label, but it could contain multiple labels
        //  in the future.
        public string[] labels;

        public RobustControllerStatusMsg()
        {
            this.isEnabled = false;
            this.complete = 0;
            this.controlUid = "";
            this.timedOut = false;
            this.errorCodes = new string[0];
            this.labels = new string[0];
        }

        public RobustControllerStatusMsg(bool isEnabled, int complete, string controlUid, bool timedOut, string[] errorCodes, string[] labels)
        {
            this.isEnabled = isEnabled;
            this.complete = complete;
            this.controlUid = controlUid;
            this.timedOut = timedOut;
            this.errorCodes = errorCodes;
            this.labels = labels;
        }

        public static RobustControllerStatusMsg Deserialize(MessageDeserializer deserializer) => new RobustControllerStatusMsg(deserializer);

        private RobustControllerStatusMsg(MessageDeserializer deserializer)
        {
            deserializer.Read(out this.isEnabled);
            deserializer.Read(out this.complete);
            deserializer.Read(out this.controlUid);
            deserializer.Read(out this.timedOut);
            deserializer.Read(out this.errorCodes, deserializer.ReadLength());
            deserializer.Read(out this.labels, deserializer.ReadLength());
        }

        public override void SerializeTo(MessageSerializer serializer)
        {
            serializer.Write(this.isEnabled);
            serializer.Write(this.complete);
            serializer.Write(this.controlUid);
            serializer.Write(this.timedOut);
            serializer.WriteLength(this.errorCodes);
            serializer.Write(this.errorCodes);
            serializer.WriteLength(this.labels);
            serializer.Write(this.labels);
        }

        public override string ToString()
        {
            return "RobustControllerStatusMsg: " +
            "\nisEnabled: " + isEnabled.ToString() +
            "\ncomplete: " + complete.ToString() +
            "\ncontrolUid: " + controlUid.ToString() +
            "\ntimedOut: " + timedOut.ToString() +
            "\nerrorCodes: " + System.String.Join(", ", errorCodes.ToList()) +
            "\nlabels: " + System.String.Join(", ", labels.ToList());
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