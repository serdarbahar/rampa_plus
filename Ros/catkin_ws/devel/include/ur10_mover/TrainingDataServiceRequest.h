// Generated by gencpp from file ur10_mover/TrainingDataServiceRequest.msg
// DO NOT EDIT!


#ifndef UR10_MOVER_MESSAGE_TRAININGDATASERVICEREQUEST_H
#define UR10_MOVER_MESSAGE_TRAININGDATASERVICEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace ur10_mover
{
template <class ContainerAllocator>
struct TrainingDataServiceRequest_
{
  typedef TrainingDataServiceRequest_<ContainerAllocator> Type;

  TrainingDataServiceRequest_()
    : input_msg()
    , pose_list()
    , context(0.0)  {
    }
  TrainingDataServiceRequest_(const ContainerAllocator& _alloc)
    : input_msg(_alloc)
    , pose_list(_alloc)
    , context(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _input_msg_type;
  _input_msg_type input_msg;

   typedef std::vector< ::geometry_msgs::Pose_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::geometry_msgs::Pose_<ContainerAllocator> >> _pose_list_type;
  _pose_list_type pose_list;

   typedef double _context_type;
  _context_type context;





  typedef boost::shared_ptr< ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TrainingDataServiceRequest_

typedef ::ur10_mover::TrainingDataServiceRequest_<std::allocator<void> > TrainingDataServiceRequest;

typedef boost::shared_ptr< ::ur10_mover::TrainingDataServiceRequest > TrainingDataServiceRequestPtr;
typedef boost::shared_ptr< ::ur10_mover::TrainingDataServiceRequest const> TrainingDataServiceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator1> & lhs, const ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator2> & rhs)
{
  return lhs.input_msg == rhs.input_msg &&
    lhs.pose_list == rhs.pose_list &&
    lhs.context == rhs.context;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator1> & lhs, const ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ur10_mover

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c820c0231f8a2ec34277ee196f97f4c1";
  }

  static const char* value(const ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc820c0231f8a2ec3ULL;
  static const uint64_t static_value2 = 0x4277ee196f97f4c1ULL;
};

template<class ContainerAllocator>
struct DataType< ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur10_mover/TrainingDataServiceRequest";
  }

  static const char* value(const ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string input_msg\n"
"geometry_msgs/Pose[] pose_list\n"
"float64 context\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.input_msg);
      stream.next(m.pose_list);
      stream.next(m.context);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrainingDataServiceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur10_mover::TrainingDataServiceRequest_<ContainerAllocator>& v)
  {
    s << indent << "input_msg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.input_msg);
    s << indent << "pose_list[]" << std::endl;
    for (size_t i = 0; i < v.pose_list.size(); ++i)
    {
      s << indent << "  pose_list[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "    ", v.pose_list[i]);
    }
    s << indent << "context: ";
    Printer<double>::stream(s, indent + "  ", v.context);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR10_MOVER_MESSAGE_TRAININGDATASERVICEREQUEST_H
