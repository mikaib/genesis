// Generated by Haxe 4.3.3
#ifndef INCLUDED_genesis__GsCommandList_GsCommandList_Impl_
#define INCLUDED_genesis__GsCommandList_GsCommandList_Impl_

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#ifndef INCLUDED_4dbe585c96d08098
#define INCLUDED_4dbe585c96d08098
#include "genesis.h"
#endif
HX_DECLARE_CLASS2(genesis,_GsCommandList,GsCommandList_Impl_)

namespace genesis{
namespace _GsCommandList{


class HXCPP_CLASS_ATTRIBUTES GsCommandList_Impl__obj : public ::hx::Object
{
	public:
		typedef ::hx::Object super;
		typedef GsCommandList_Impl__obj OBJ_;
		GsCommandList_Impl__obj();

	public:
		enum { _hx_ClassId = 0x27296737 };

		void __construct();
		inline void *operator new(size_t inSize, bool inContainer=false,const char *inName="genesis._GsCommandList.GsCommandList_Impl_")
			{ return ::hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return ::hx::Object::operator new(inSize+extra,false,"genesis._GsCommandList.GsCommandList_Impl_"); }

		inline static ::hx::ObjectPtr< GsCommandList_Impl__obj > __new() {
			::hx::ObjectPtr< GsCommandList_Impl__obj > __this = new GsCommandList_Impl__obj();
			__this->__construct();
			return __this;
		}

		inline static ::hx::ObjectPtr< GsCommandList_Impl__obj > __alloc(::hx::Ctx *_hx_ctx) {
			GsCommandList_Impl__obj *__this = (GsCommandList_Impl__obj*)(::hx::Ctx::alloc(_hx_ctx, sizeof(GsCommandList_Impl__obj), false, "genesis._GsCommandList.GsCommandList_Impl_"));
			*(void **)__this = GsCommandList_Impl__obj::_hx_vtable;
			return __this;
		}

		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(::hx::DynamicArray inArgs);
		//~GsCommandList_Impl__obj();

		HX_DO_RTTI_ALL;
		static void __register();
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_("GsCommandList_Impl_",bd,c0,44,16); }

		static  GsCommandList * begin( GsCommandList * this1);

		static  GsCommandList * end( GsCommandList * this1);

		static  GsCommandList * submit( GsCommandList * this1);

		static  GsCommandList * clear( GsCommandList * this1,int flags,::hx::Null< Float >  r,::hx::Null< Float >  g,::hx::Null< Float >  b,::hx::Null< Float >  a);

		static  GsCommandList * setViewport( GsCommandList * this1,int x,int y,int width,int height);

		static  GsCommandList * discard( GsCommandList * this1);

		static  GsCommandList * usePipeline( GsCommandList * this1, GsPipeline * pipeline);

		static  GsCommandList * useBuffer( GsCommandList * this1, GsBuffer * buffer);

		static  GsCommandList * useTexture( GsCommandList * this1, GsTexture * texture,int slot);

		static  GsCommandList * drawArrays( GsCommandList * this1,int start,int count);

		static  GsCommandList * drawIndexed( GsCommandList * this1,int count);

		static  GsCommandList * setScissor( GsCommandList * this1,int x,int y,int width,int height);

		static  GsCommandList * disableScissor( GsCommandList * this1);

		static  GsCommandList * setInt( GsCommandList * this1,int location,int value);

		static  GsCommandList * setFloat( GsCommandList * this1,int location,Float value);

		static  GsCommandList * setVec2( GsCommandList * this1,int location,Float x,Float y);

		static  GsCommandList * setVec3( GsCommandList * this1,int location,Float x,Float y,Float z);

		static  GsCommandList * setVec4( GsCommandList * this1,int location,Float x,Float y,Float z,Float w);

		static  GsCommandList * setMat4( GsCommandList * this1,int location,Float m00,Float m01,Float m02,Float m03,Float m10,Float m11,Float m12,Float m13,Float m20,Float m21,Float m22,Float m23,Float m30,Float m31,Float m32,Float m33);

		static  GsCommandList * setMat4Array( GsCommandList * this1,int location,::Array< Float > data);

		static  GsCommandList * copyTexture( GsCommandList * this1, GsTexture * src, GsTexture * dst);

		static  GsCommandList * resolveTexture( GsCommandList * this1, GsTexture * src, GsTexture * dst);

		static  GsCommandList * copyTexturePartial( GsCommandList * this1, GsTexture * src, GsTexture * dst,int srcX,int srcY,int dstX,int dstY,int width,int height);

		static  GsCommandList * generateMipmaps( GsCommandList * this1, GsTexture * texture);

		static void destroy( GsCommandList * this1);

};

} // end namespace genesis
} // end namespace _GsCommandList

#endif /* INCLUDED_genesis__GsCommandList_GsCommandList_Impl_ */ 
