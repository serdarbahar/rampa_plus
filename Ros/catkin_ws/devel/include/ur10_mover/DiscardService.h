// Generated by gencpp from file ur10_mover/DiscardService.msg
// DO NOT EDIT!


#ifndef UR10_MOVER_MESSAGE_DISCARDSERVICE_H
#define UR10_MOVER_MESSAGE_DISCARDSERVICE_H

#include <ros/service_traits.h>


#include <ur10_mover/DiscardServiceRequest.h>
#include <ur10_mover/DiscardServiceResponse.h>


namespace ur10_mover
{

struct DiscardService
{

typedef DiscardServiceRequest Request;
typedef DiscardServiceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DiscardService
} // namespace ur10_mover


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ur10_mover::DiscardService > {
  static const char* value()
  {
    return "b57e415505eb1ef8a5131e05d03cd81c";
  }

  static const char* value(const ::ur10_mover::DiscardService&) { return value(); }
};

template<>
struct DataType< ::ur10_mover::DiscardService > {
  static const char* value()
  {
    return "ur10_mover/DiscardService";
  }

  static const char* value(const ::ur10_mover::DiscardService&) { return value(); }
};


// service_traits::MD5Sum< ::ur10_mover::DiscardServiceRequest> should match
// service_traits::MD5Sum< ::ur10_mover::DiscardService >
template<>
struct MD5Sum< ::ur10_mover::DiscardServiceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ur10_mover::DiscardService >::value();
  }
  static const char* value(const ::ur10_mover::DiscardServiceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ur10_mover::DiscardServiceRequest> should match
// service_traits::DataType< ::ur10_mover::DiscardService >
template<>
struct DataType< ::ur10_mover::DiscardServiceRequest>
{
  static const char* value()
  {
    return DataType< ::ur10_mover::DiscardService >::value();
  }
  static const char* value(const ::ur10_mover::DiscardServiceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ur10_mover::DiscardServiceResponse> should match
// service_traits::MD5Sum< ::ur10_mover::DiscardService >
template<>
struct MD5Sum< ::ur10_mover::DiscardServiceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ur10_mover::DiscardService >::value();
  }
  static const char* value(const ::ur10_mover::DiscardServiceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ur10_mover::DiscardServiceResponse> should match
// service_traits::DataType< ::ur10_mover::DiscardService >
template<>
struct DataType< ::ur10_mover::DiscardServiceResponse>
{
  static const char* value()
  {
    return DataType< ::ur10_mover::DiscardService >::value();
  }
  static const char* value(const ::ur10_mover::DiscardServiceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UR10_MOVER_MESSAGE_DISCARDSERVICE_H
