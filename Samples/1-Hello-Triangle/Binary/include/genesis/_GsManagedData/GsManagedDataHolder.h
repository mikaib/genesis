// Generated by Haxe 4.3.3
#ifndef INCLUDED_genesis__GsManagedData_GsManagedDataHolder
#define INCLUDED_genesis__GsManagedData_GsManagedDataHolder

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_STACK_FRAME(_hx_pos_99793c9097b08b96_8_new)
HX_DECLARE_CLASS2(genesis,_GsManagedData,GsManagedDataHolder)

namespace genesis{
namespace _GsManagedData{


class HXCPP_CLASS_ATTRIBUTES GsManagedDataHolder_obj : public ::hx::Object
{
	public:
		typedef ::hx::Object super;
		typedef GsManagedDataHolder_obj OBJ_;
		GsManagedDataHolder_obj();

	public:
		enum { _hx_ClassId = 0x745b0543 };

		void __construct();
		inline void *operator new(size_t inSize, bool inContainer=true,const char *inName="genesis._GsManagedData.GsManagedDataHolder")
			{ return ::hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return ::hx::Object::operator new(inSize+extra,true,"genesis._GsManagedData.GsManagedDataHolder"); }

		inline static ::hx::ObjectPtr< GsManagedDataHolder_obj > __new() {
			::hx::ObjectPtr< GsManagedDataHolder_obj > __this = new GsManagedDataHolder_obj();
			__this->__construct();
			return __this;
		}

		inline static ::hx::ObjectPtr< GsManagedDataHolder_obj > __alloc(::hx::Ctx *_hx_ctx) {
			GsManagedDataHolder_obj *__this = (GsManagedDataHolder_obj*)(::hx::Ctx::alloc(_hx_ctx, sizeof(GsManagedDataHolder_obj), true, "genesis._GsManagedData.GsManagedDataHolder"));
			*(void **)__this = GsManagedDataHolder_obj::_hx_vtable;
{
            	HX_STACKFRAME(&_hx_pos_99793c9097b08b96_8_new)
            	}
		
			return __this;
		}

		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(::hx::DynamicArray inArgs);
		//~GsManagedDataHolder_obj();

		HX_DO_RTTI_ALL;
		::hx::Val __Field(const ::String &inString, ::hx::PropertyAccess inCallProp);
		static bool __GetStatic(const ::String &inString, Dynamic &outValue, ::hx::PropertyAccess inCallProp);
		::hx::Val __SetField(const ::String &inString,const ::hx::Val &inValue, ::hx::PropertyAccess inCallProp);
		void __GetFields(Array< ::String> &outFields);
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_("GsManagedDataHolder",89,84,5a,4e); }

		static  ::genesis::_GsManagedData::GsManagedDataHolder create(void * ptr,int size);
		static ::Dynamic create_dyn();

		void * ptr;
		int size;
		void * getPtr();
		::Dynamic getPtr_dyn();

		int getSize();
		::Dynamic getSize_dyn();

};

} // end namespace genesis
} // end namespace _GsManagedData

#endif /* INCLUDED_genesis__GsManagedData_GsManagedDataHolder */ 
