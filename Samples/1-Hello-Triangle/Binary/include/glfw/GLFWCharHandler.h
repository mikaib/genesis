// Generated by Haxe 4.3.3
#ifndef INCLUDED_glfw_GLFWCharHandler
#define INCLUDED_glfw_GLFWCharHandler

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#ifndef INCLUDED_66c800784bc86d2f
#define INCLUDED_66c800784bc86d2f
#include "linc_glfw.h"
#endif
HX_DECLARE_CLASS1(glfw,GLFWCharHandler)
HX_DECLARE_CLASS1(haxe,IMap)
HX_DECLARE_CLASS2(haxe,ds,StringMap)

namespace glfw{


class HXCPP_CLASS_ATTRIBUTES GLFWCharHandler_obj : public ::hx::Object
{
	public:
		typedef ::hx::Object super;
		typedef GLFWCharHandler_obj OBJ_;
		GLFWCharHandler_obj();

	public:
		enum { _hx_ClassId = 0x30be6ba4 };

		void __construct();
		inline void *operator new(size_t inSize, bool inContainer=false,const char *inName="glfw.GLFWCharHandler")
			{ return ::hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return ::hx::Object::operator new(inSize+extra,false,"glfw.GLFWCharHandler"); }

		inline static ::hx::ObjectPtr< GLFWCharHandler_obj > __new() {
			::hx::ObjectPtr< GLFWCharHandler_obj > __this = new GLFWCharHandler_obj();
			__this->__construct();
			return __this;
		}

		inline static ::hx::ObjectPtr< GLFWCharHandler_obj > __alloc(::hx::Ctx *_hx_ctx) {
			GLFWCharHandler_obj *__this = (GLFWCharHandler_obj*)(::hx::Ctx::alloc(_hx_ctx, sizeof(GLFWCharHandler_obj), false, "glfw.GLFWCharHandler"));
			*(void **)__this = GLFWCharHandler_obj::_hx_vtable;
			return __this;
		}

		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(::hx::DynamicArray inArgs);
		//~GLFWCharHandler_obj();

		HX_DO_RTTI_ALL;
		static bool __GetStatic(const ::String &inString, Dynamic &outValue, ::hx::PropertyAccess inCallProp);
		static bool __SetStatic(const ::String &inString, Dynamic &ioValue, ::hx::PropertyAccess inCallProp);
		static void __register();
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_("GLFWCharHandler",7e,d8,7b,d9); }

		static void __boot();
		static  ::haxe::ds::StringMap listeners;
		static void nativeCallack( GLFWwindow * win,unsigned int key);
		static ::Dynamic nativeCallack_dyn();

		static void setCallback( GLFWwindow * win, ::Dynamic func);
		static ::Dynamic setCallback_dyn();

};

} // end namespace glfw

#endif /* INCLUDED_glfw_GLFWCharHandler */ 
