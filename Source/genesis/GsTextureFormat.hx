package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('cpp.Struct<GsTextureFormat>')
private extern class NativeGsTextureFormat {}

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
extern enum abstract GsTextureFormat(NativeGsTextureFormat) {
    @:native('GS_TEXTURE_FORMAT_RGB8')
    public var GS_TEXTURE_FORMAT_RGB8;

    @:native('GS_TEXTURE_FORMAT_RGBA8')
    public var GS_TEXTURE_FORMAT_RGBA8;

    @:native('GS_TEXTURE_FORMAT_RGB16F')
    public var GS_TEXTURE_FORMAT_RGB16F;

    @:native('GS_TEXTURE_FORMAT_RGBA16F')
    public var GS_TEXTURE_FORMAT_RGBA16F;

    @:native('GS_TEXTURE_FORMAT_DEPTH24_STENCIL8')
    public var GS_TEXTURE_FORMAT_DEPTH24_STENCIL8;

    @:native('GS_TEXTURE_FORMAT_DEPTH32F')
    public var GS_TEXTURE_FORMAT_DEPTH32F;
}