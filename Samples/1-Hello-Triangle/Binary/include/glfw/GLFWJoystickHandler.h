// Generated by Haxe 4.3.3
#ifndef INCLUDED_glfw_GLFWJoystickHandler
#define INCLUDED_glfw_GLFWJoystickHandler

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS1(glfw,GLFWJoystickHandler)

namespace glfw{


class HXCPP_CLASS_ATTRIBUTES GLFWJoystickHandler_obj : public ::hx::Object
{
	public:
		typedef ::hx::Object super;
		typedef GLFWJoystickHandler_obj OBJ_;
		GLFWJoystickHandler_obj();

	public:
		enum { _hx_ClassId = 0x11dfda7e };

		void __construct();
		inline void *operator new(size_t inSize, bool inContainer=false,const char *inName="glfw.GLFWJoystickHandler")
			{ return ::hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return ::hx::Object::operator new(inSize+extra,false,"glfw.GLFWJoystickHandler"); }

		inline static ::hx::ObjectPtr< GLFWJoystickHandler_obj > __new() {
			::hx::ObjectPtr< GLFWJoystickHandler_obj > __this = new GLFWJoystickHandler_obj();
			__this->__construct();
			return __this;
		}

		inline static ::hx::ObjectPtr< GLFWJoystickHandler_obj > __alloc(::hx::Ctx *_hx_ctx) {
			GLFWJoystickHandler_obj *__this = (GLFWJoystickHandler_obj*)(::hx::Ctx::alloc(_hx_ctx, sizeof(GLFWJoystickHandler_obj), false, "glfw.GLFWJoystickHandler"));
			*(void **)__this = GLFWJoystickHandler_obj::_hx_vtable;
			return __this;
		}

		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(::hx::DynamicArray inArgs);
		//~GLFWJoystickHandler_obj();

		HX_DO_RTTI_ALL;
		static bool __GetStatic(const ::String &inString, Dynamic &outValue, ::hx::PropertyAccess inCallProp);
		static bool __SetStatic(const ::String &inString, Dynamic &ioValue, ::hx::PropertyAccess inCallProp);
		static void __register();
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_("GLFWJoystickHandler",58,bc,1d,29); }

		static  ::Dynamic listener;
		static Dynamic listener_dyn() { return listener;}
		static void nativeCallack(int joy,int event);
		static ::Dynamic nativeCallack_dyn();

		static void setCallback( ::Dynamic func);
		static ::Dynamic setCallback_dyn();

};

} // end namespace glfw

#endif /* INCLUDED_glfw_GLFWJoystickHandler */ 
