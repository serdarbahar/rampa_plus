// Generated by gencpp from file ur10_mover/SampleService.msg
// DO NOT EDIT!


#ifndef UR10_MOVER_MESSAGE_SAMPLESERVICE_H
#define UR10_MOVER_MESSAGE_SAMPLESERVICE_H

#include <ros/service_traits.h>


#include <ur10_mover/SampleServiceRequest.h>
#include <ur10_mover/SampleServiceResponse.h>


namespace ur10_mover
{

struct SampleService
{

typedef SampleServiceRequest Request;
typedef SampleServiceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SampleService
} // namespace ur10_mover


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ur10_mover::SampleService > {
  static const char* value()
  {
    return "1d1a2b8ec8f0aacf9f57d31767f2b42d";
  }

  static const char* value(const ::ur10_mover::SampleService&) { return value(); }
};

template<>
struct DataType< ::ur10_mover::SampleService > {
  static const char* value()
  {
    return "ur10_mover/SampleService";
  }

  static const char* value(const ::ur10_mover::SampleService&) { return value(); }
};


// service_traits::MD5Sum< ::ur10_mover::SampleServiceRequest> should match
// service_traits::MD5Sum< ::ur10_mover::SampleService >
template<>
struct MD5Sum< ::ur10_mover::SampleServiceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ur10_mover::SampleService >::value();
  }
  static const char* value(const ::ur10_mover::SampleServiceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ur10_mover::SampleServiceRequest> should match
// service_traits::DataType< ::ur10_mover::SampleService >
template<>
struct DataType< ::ur10_mover::SampleServiceRequest>
{
  static const char* value()
  {
    return DataType< ::ur10_mover::SampleService >::value();
  }
  static const char* value(const ::ur10_mover::SampleServiceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ur10_mover::SampleServiceResponse> should match
// service_traits::MD5Sum< ::ur10_mover::SampleService >
template<>
struct MD5Sum< ::ur10_mover::SampleServiceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ur10_mover::SampleService >::value();
  }
  static const char* value(const ::ur10_mover::SampleServiceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ur10_mover::SampleServiceResponse> should match
// service_traits::DataType< ::ur10_mover::SampleService >
template<>
struct DataType< ::ur10_mover::SampleServiceResponse>
{
  static const char* value()
  {
    return DataType< ::ur10_mover::SampleService >::value();
  }
  static const char* value(const ::ur10_mover::SampleServiceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UR10_MOVER_MESSAGE_SAMPLESERVICE_H
