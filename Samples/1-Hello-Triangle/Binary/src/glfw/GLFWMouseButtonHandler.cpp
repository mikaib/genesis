// Generated by Haxe 4.3.3
#include <hxcpp.h>

#ifndef INCLUDED_66c800784bc86d2f
#define INCLUDED_66c800784bc86d2f
#include "linc_glfw.h"
#endif
#ifndef INCLUDED_Std
#include <Std.h>
#endif
#ifndef INCLUDED_glfw_GLFWMouseButtonHandler
#include <glfw/GLFWMouseButtonHandler.h>
#endif
#ifndef INCLUDED_haxe_IMap
#include <haxe/IMap.h>
#endif
#ifndef INCLUDED_haxe_ds_StringMap
#include <haxe/ds/StringMap.h>
#endif

HX_LOCAL_STACK_FRAME(_hx_pos_92494b138c44a847_103_nativeCallack,"glfw.GLFWMouseButtonHandler","nativeCallack",0x4d078b07,"glfw.GLFWMouseButtonHandler.nativeCallack","glfw/GLFW.hx",103,0x7145aa2f)
HX_LOCAL_STACK_FRAME(_hx_pos_92494b138c44a847_111_setCallback,"glfw.GLFWMouseButtonHandler","setCallback",0x9f7f7d3a,"glfw.GLFWMouseButtonHandler.setCallback","glfw/GLFW.hx",111,0x7145aa2f)
HX_LOCAL_STACK_FRAME(_hx_pos_92494b138c44a847_101_boot,"glfw.GLFWMouseButtonHandler","boot",0x2a26b21f,"glfw.GLFWMouseButtonHandler.boot","glfw/GLFW.hx",101,0x7145aa2f)
namespace glfw{

void GLFWMouseButtonHandler_obj::__construct() { }

Dynamic GLFWMouseButtonHandler_obj::__CreateEmpty() { return new GLFWMouseButtonHandler_obj; }

void *GLFWMouseButtonHandler_obj::_hx_vtable = 0;

Dynamic GLFWMouseButtonHandler_obj::__Create(::hx::DynamicArray inArgs)
{
	::hx::ObjectPtr< GLFWMouseButtonHandler_obj > _hx_result = new GLFWMouseButtonHandler_obj();
	_hx_result->__construct();
	return _hx_result;
}

bool GLFWMouseButtonHandler_obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x6ae5651f;
}

 ::haxe::ds::StringMap GLFWMouseButtonHandler_obj::listeners;

void GLFWMouseButtonHandler_obj::nativeCallack( GLFWwindow * win,int button,int action,int mods){
            	HX_STACKFRAME(&_hx_pos_92494b138c44a847_103_nativeCallack)
HXLINE( 104)		::String ptr = (::Std_obj::string(( ( ::Dynamic)(( (::cpp::Pointer<  GLFWwindow >)(win) )) )) + HX_("",00,00,00,00));
HXLINE( 105)		if (::glfw::GLFWMouseButtonHandler_obj::listeners->exists(ptr)) {
HXLINE( 106)			::glfw::GLFWMouseButtonHandler_obj::listeners->get(ptr)(button,action,mods);
            		}
            	}


static ::Dynamic _hx_wrapGLFWMouseButtonHandler_obj_nativeCallack(  const Dynamic &a0,const Dynamic &a1,const Dynamic &a2,const Dynamic &a3) {
	GLFWMouseButtonHandler_obj::nativeCallack((cpp::Pointer< GLFWwindow >) a0,a1,a2,a3);
	return null();
}
::Dynamic GLFWMouseButtonHandler_obj::nativeCallack_dyn() {
	return ::hx::CreateStaticFunction4("nativeCallack",_hx_wrapGLFWMouseButtonHandler_obj_nativeCallack);}
void GLFWMouseButtonHandler_obj::setCallback( GLFWwindow * win, ::Dynamic func){
            	HX_STACKFRAME(&_hx_pos_92494b138c44a847_111_setCallback)
HXDLIN( 111)		::Dynamic this1 = ::glfw::GLFWMouseButtonHandler_obj::listeners;
HXDLIN( 111)		( ( ::haxe::ds::StringMap)(this1) )->set((::Std_obj::string(( ( ::Dynamic)(( (::cpp::Pointer<  GLFWwindow >)(win) )) )) + HX_("",00,00,00,00)),func);
            	}


static ::Dynamic _hx_wrapGLFWMouseButtonHandler_obj_setCallback(  const Dynamic &a0,const Dynamic &a1) {
	GLFWMouseButtonHandler_obj::setCallback((cpp::Pointer< GLFWwindow >) a0,a1);
	return null();
}
::Dynamic GLFWMouseButtonHandler_obj::setCallback_dyn() {
	return ::hx::CreateStaticFunction2("setCallback",_hx_wrapGLFWMouseButtonHandler_obj_setCallback);}

GLFWMouseButtonHandler_obj::GLFWMouseButtonHandler_obj()
{
}

bool GLFWMouseButtonHandler_obj::__GetStatic(const ::String &inName, Dynamic &outValue, ::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 9:
		if (HX_FIELD_EQ(inName,"listeners") ) { outValue = ( listeners ); return true; }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"setCallback") ) { outValue = setCallback_dyn(); return true; }
		break;
	case 13:
		if (HX_FIELD_EQ(inName,"nativeCallack") ) { outValue = nativeCallack_dyn(); return true; }
	}
	return false;
}

bool GLFWMouseButtonHandler_obj::__SetStatic(const ::String &inName,Dynamic &ioValue,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 9:
		if (HX_FIELD_EQ(inName,"listeners") ) { listeners=ioValue.Cast<  ::haxe::ds::StringMap >(); return true; }
	}
	return false;
}

#ifdef HXCPP_SCRIPTABLE
static ::hx::StorageInfo *GLFWMouseButtonHandler_obj_sMemberStorageInfo = 0;
static ::hx::StaticInfo GLFWMouseButtonHandler_obj_sStaticStorageInfo[] = {
	{::hx::fsObject /*  ::haxe::ds::StringMap */ ,(void *) &GLFWMouseButtonHandler_obj::listeners,HX_("listeners",7f,65,8e,f3)},
	{ ::hx::fsUnknown, 0, null()}
};
#endif

static void GLFWMouseButtonHandler_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(GLFWMouseButtonHandler_obj::listeners,"listeners");
};

#ifdef HXCPP_VISIT_ALLOCS
static void GLFWMouseButtonHandler_obj_sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(GLFWMouseButtonHandler_obj::listeners,"listeners");
};

#endif

::hx::Class GLFWMouseButtonHandler_obj::__mClass;

static ::String GLFWMouseButtonHandler_obj_sStaticFields[] = {
	HX_("listeners",7f,65,8e,f3),
	HX_("nativeCallack",94,5e,6f,13),
	HX_("setCallback",87,63,67,af),
	::String(null())
};

void GLFWMouseButtonHandler_obj::__register()
{
	GLFWMouseButtonHandler_obj _hx_dummy;
	GLFWMouseButtonHandler_obj::_hx_vtable = *(void **)&_hx_dummy;
	::hx::Static(__mClass) = new ::hx::Class_obj();
	__mClass->mName = HX_("glfw.GLFWMouseButtonHandler",a1,f9,11,b2);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &GLFWMouseButtonHandler_obj::__GetStatic;
	__mClass->mSetStaticField = &GLFWMouseButtonHandler_obj::__SetStatic;
	__mClass->mMarkFunc = GLFWMouseButtonHandler_obj_sMarkStatics;
	__mClass->mStatics = ::hx::Class_obj::dupFunctions(GLFWMouseButtonHandler_obj_sStaticFields);
	__mClass->mMembers = ::hx::Class_obj::dupFunctions(0 /* sMemberFields */);
	__mClass->mCanCast = ::hx::TCanCast< GLFWMouseButtonHandler_obj >;
#ifdef HXCPP_VISIT_ALLOCS
	__mClass->mVisitFunc = GLFWMouseButtonHandler_obj_sVisitStatics;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = GLFWMouseButtonHandler_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = GLFWMouseButtonHandler_obj_sStaticStorageInfo;
#endif
	::hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

void GLFWMouseButtonHandler_obj::__boot()
{
{
            	HX_GC_STACKFRAME(&_hx_pos_92494b138c44a847_101_boot)
HXDLIN( 101)		listeners =  ::haxe::ds::StringMap_obj::__alloc( HX_CTX );
            	}
}

} // end namespace glfw
