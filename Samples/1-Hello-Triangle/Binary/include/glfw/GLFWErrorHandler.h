// Generated by Haxe 4.3.3
#ifndef INCLUDED_glfw_GLFWErrorHandler
#define INCLUDED_glfw_GLFWErrorHandler

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS1(glfw,GLFWErrorHandler)

namespace glfw{


class HXCPP_CLASS_ATTRIBUTES GLFWErrorHandler_obj : public ::hx::Object
{
	public:
		typedef ::hx::Object super;
		typedef GLFWErrorHandler_obj OBJ_;
		GLFWErrorHandler_obj();

	public:
		enum { _hx_ClassId = 0x2af456d2 };

		void __construct();
		inline void *operator new(size_t inSize, bool inContainer=false,const char *inName="glfw.GLFWErrorHandler")
			{ return ::hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return ::hx::Object::operator new(inSize+extra,false,"glfw.GLFWErrorHandler"); }

		inline static ::hx::ObjectPtr< GLFWErrorHandler_obj > __new() {
			::hx::ObjectPtr< GLFWErrorHandler_obj > __this = new GLFWErrorHandler_obj();
			__this->__construct();
			return __this;
		}

		inline static ::hx::ObjectPtr< GLFWErrorHandler_obj > __alloc(::hx::Ctx *_hx_ctx) {
			GLFWErrorHandler_obj *__this = (GLFWErrorHandler_obj*)(::hx::Ctx::alloc(_hx_ctx, sizeof(GLFWErrorHandler_obj), false, "glfw.GLFWErrorHandler"));
			*(void **)__this = GLFWErrorHandler_obj::_hx_vtable;
			return __this;
		}

		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(::hx::DynamicArray inArgs);
		//~GLFWErrorHandler_obj();

		HX_DO_RTTI_ALL;
		static bool __GetStatic(const ::String &inString, Dynamic &outValue, ::hx::PropertyAccess inCallProp);
		static bool __SetStatic(const ::String &inString, Dynamic &ioValue, ::hx::PropertyAccess inCallProp);
		static void __register();
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_("GLFWErrorHandler",b8,28,f6,27); }

		static  ::Dynamic cb;
		static Dynamic cb_dyn() { return cb;}
		static void nativeCallack(int error,const char* message);

		static void setCallback( ::Dynamic func);
		static ::Dynamic setCallback_dyn();

};

} // end namespace glfw

#endif /* INCLUDED_glfw_GLFWErrorHandler */ 
