// Generated by gencpp from file panda_mover/TrainingDataService.msg
// DO NOT EDIT!


#ifndef PANDA_MOVER_MESSAGE_TRAININGDATASERVICE_H
#define PANDA_MOVER_MESSAGE_TRAININGDATASERVICE_H

#include <ros/service_traits.h>


#include <panda_mover/TrainingDataServiceRequest.h>
#include <panda_mover/TrainingDataServiceResponse.h>


namespace panda_mover
{

struct TrainingDataService
{

typedef TrainingDataServiceRequest Request;
typedef TrainingDataServiceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct TrainingDataService
} // namespace panda_mover


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::panda_mover::TrainingDataService > {
  static const char* value()
  {
    return "2553c089c44939195fc3dab519dd2853";
  }

  static const char* value(const ::panda_mover::TrainingDataService&) { return value(); }
};

template<>
struct DataType< ::panda_mover::TrainingDataService > {
  static const char* value()
  {
    return "panda_mover/TrainingDataService";
  }

  static const char* value(const ::panda_mover::TrainingDataService&) { return value(); }
};


// service_traits::MD5Sum< ::panda_mover::TrainingDataServiceRequest> should match
// service_traits::MD5Sum< ::panda_mover::TrainingDataService >
template<>
struct MD5Sum< ::panda_mover::TrainingDataServiceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::panda_mover::TrainingDataService >::value();
  }
  static const char* value(const ::panda_mover::TrainingDataServiceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::panda_mover::TrainingDataServiceRequest> should match
// service_traits::DataType< ::panda_mover::TrainingDataService >
template<>
struct DataType< ::panda_mover::TrainingDataServiceRequest>
{
  static const char* value()
  {
    return DataType< ::panda_mover::TrainingDataService >::value();
  }
  static const char* value(const ::panda_mover::TrainingDataServiceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::panda_mover::TrainingDataServiceResponse> should match
// service_traits::MD5Sum< ::panda_mover::TrainingDataService >
template<>
struct MD5Sum< ::panda_mover::TrainingDataServiceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::panda_mover::TrainingDataService >::value();
  }
  static const char* value(const ::panda_mover::TrainingDataServiceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::panda_mover::TrainingDataServiceResponse> should match
// service_traits::DataType< ::panda_mover::TrainingDataService >
template<>
struct DataType< ::panda_mover::TrainingDataServiceResponse>
{
  static const char* value()
  {
    return DataType< ::panda_mover::TrainingDataService >::value();
  }
  static const char* value(const ::panda_mover::TrainingDataServiceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PANDA_MOVER_MESSAGE_TRAININGDATASERVICE_H
