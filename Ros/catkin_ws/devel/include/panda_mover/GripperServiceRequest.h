// Generated by gencpp from file panda_mover/GripperServiceRequest.msg
// DO NOT EDIT!


#ifndef PANDA_MOVER_MESSAGE_GRIPPERSERVICEREQUEST_H
#define PANDA_MOVER_MESSAGE_GRIPPERSERVICEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace panda_mover
{
template <class ContainerAllocator>
struct GripperServiceRequest_
{
  typedef GripperServiceRequest_<ContainerAllocator> Type;

  GripperServiceRequest_()
    : input_msg()  {
    }
  GripperServiceRequest_(const ContainerAllocator& _alloc)
    : input_msg(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _input_msg_type;
  _input_msg_type input_msg;





  typedef boost::shared_ptr< ::panda_mover::GripperServiceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::panda_mover::GripperServiceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GripperServiceRequest_

typedef ::panda_mover::GripperServiceRequest_<std::allocator<void> > GripperServiceRequest;

typedef boost::shared_ptr< ::panda_mover::GripperServiceRequest > GripperServiceRequestPtr;
typedef boost::shared_ptr< ::panda_mover::GripperServiceRequest const> GripperServiceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::panda_mover::GripperServiceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::panda_mover::GripperServiceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::panda_mover::GripperServiceRequest_<ContainerAllocator1> & lhs, const ::panda_mover::GripperServiceRequest_<ContainerAllocator2> & rhs)
{
  return lhs.input_msg == rhs.input_msg;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::panda_mover::GripperServiceRequest_<ContainerAllocator1> & lhs, const ::panda_mover::GripperServiceRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace panda_mover

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::panda_mover::GripperServiceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::panda_mover::GripperServiceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::panda_mover::GripperServiceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::panda_mover::GripperServiceRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::panda_mover::GripperServiceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::panda_mover::GripperServiceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::panda_mover::GripperServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2beecd7d8a70aad2184c84345d0cd8d3";
  }

  static const char* value(const ::panda_mover::GripperServiceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2beecd7d8a70aad2ULL;
  static const uint64_t static_value2 = 0x184c84345d0cd8d3ULL;
};

template<class ContainerAllocator>
struct DataType< ::panda_mover::GripperServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "panda_mover/GripperServiceRequest";
  }

  static const char* value(const ::panda_mover::GripperServiceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::panda_mover::GripperServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string input_msg\n"
;
  }

  static const char* value(const ::panda_mover::GripperServiceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::panda_mover::GripperServiceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.input_msg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GripperServiceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::panda_mover::GripperServiceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::panda_mover::GripperServiceRequest_<ContainerAllocator>& v)
  {
    s << indent << "input_msg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.input_msg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PANDA_MOVER_MESSAGE_GRIPPERSERVICEREQUEST_H