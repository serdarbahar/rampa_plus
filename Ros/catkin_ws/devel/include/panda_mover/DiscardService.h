// Generated by gencpp from file panda_mover/DiscardService.msg
// DO NOT EDIT!


#ifndef PANDA_MOVER_MESSAGE_DISCARDSERVICE_H
#define PANDA_MOVER_MESSAGE_DISCARDSERVICE_H

#include <ros/service_traits.h>


#include <panda_mover/DiscardServiceRequest.h>
#include <panda_mover/DiscardServiceResponse.h>


namespace panda_mover
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
} // namespace panda_mover


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::panda_mover::DiscardService > {
  static const char* value()
  {
    return "b57e415505eb1ef8a5131e05d03cd81c";
  }

  static const char* value(const ::panda_mover::DiscardService&) { return value(); }
};

template<>
struct DataType< ::panda_mover::DiscardService > {
  static const char* value()
  {
    return "panda_mover/DiscardService";
  }

  static const char* value(const ::panda_mover::DiscardService&) { return value(); }
};


// service_traits::MD5Sum< ::panda_mover::DiscardServiceRequest> should match
// service_traits::MD5Sum< ::panda_mover::DiscardService >
template<>
struct MD5Sum< ::panda_mover::DiscardServiceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::panda_mover::DiscardService >::value();
  }
  static const char* value(const ::panda_mover::DiscardServiceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::panda_mover::DiscardServiceRequest> should match
// service_traits::DataType< ::panda_mover::DiscardService >
template<>
struct DataType< ::panda_mover::DiscardServiceRequest>
{
  static const char* value()
  {
    return DataType< ::panda_mover::DiscardService >::value();
  }
  static const char* value(const ::panda_mover::DiscardServiceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::panda_mover::DiscardServiceResponse> should match
// service_traits::MD5Sum< ::panda_mover::DiscardService >
template<>
struct MD5Sum< ::panda_mover::DiscardServiceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::panda_mover::DiscardService >::value();
  }
  static const char* value(const ::panda_mover::DiscardServiceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::panda_mover::DiscardServiceResponse> should match
// service_traits::DataType< ::panda_mover::DiscardService >
template<>
struct DataType< ::panda_mover::DiscardServiceResponse>
{
  static const char* value()
  {
    return DataType< ::panda_mover::DiscardService >::value();
  }
  static const char* value(const ::panda_mover::DiscardServiceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PANDA_MOVER_MESSAGE_DISCARDSERVICE_H