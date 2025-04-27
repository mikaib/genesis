#ifndef HXCPP_CONFIG_INCLUDED
#define HXCPP_CONFIG_INCLUDED

#if !defined(LINC_GLFW) && !defined(NO_LINC_GLFW)
#define LINC_GLFW 
#endif

#if !defined(GLFW_INCLUDE_NONE) && !defined(NO_GLFW_INCLUDE_NONE)
#define GLFW_INCLUDE_NONE 
#endif

#if !defined(EMSCRIPTEN) && !defined(NO_EMSCRIPTEN)
#define EMSCRIPTEN 
#endif

#if !defined(HXCPP_VISIT_ALLOCS) && !defined(NO_HXCPP_VISIT_ALLOCS)
#define HXCPP_VISIT_ALLOCS 
#endif

#if !defined(HXCPP_SINGLE_THREADED_APP) && !defined(NO_HXCPP_SINGLE_THREADED_APP)
#define HXCPP_SINGLE_THREADED_APP 
#endif

#if !defined(HX_SMART_STRINGS) && !defined(NO_HX_SMART_STRINGS)
#define HX_SMART_STRINGS 
#endif

#if !defined(HXCPP_API_LEVEL) && !defined(NO_HXCPP_API_LEVEL)
#define HXCPP_API_LEVEL 430
#endif

#include <hxcpp.h>

#endif
