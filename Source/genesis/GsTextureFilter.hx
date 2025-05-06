package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('cpp.Struct<GsTextureFilter>')
private extern class NativeGsTextureFilter {}

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
extern enum abstract GsTextureFilter(NativeGsTextureFilter) {
    @:native('GS_TEXTURE_FILTER_NEAREST')
    public var GS_TEXTURE_FILTER_NEAREST;

    @:native('GS_TEXTURE_FILTER_LINEAR')
    public var GS_TEXTURE_FILTER_LINEAR;

    @:native('GS_TEXTURE_FILTER_MIPMAP_NEAREST')
    public var GS_TEXTURE_FILTER_MIPMAP_NEAREST;

    @:native('GS_TEXTURE_FILTER_MIPMAP_LINEAR')
    public var GS_TEXTURE_FILTER_MIPMAP_LINEAR;
}