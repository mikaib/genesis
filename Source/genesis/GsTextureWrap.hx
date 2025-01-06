package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsTextureWrap')
private extern class NativeGsTextureWrap {}

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
extern enum abstract GsTextureWrap(NativeGsTextureWrap) {
    @:native('GS_TEXTURE_WRAP_REPEAT')
    public var GS_TEXTURE_WRAP_REPEAT;

    @:native('GS_TEXTURE_WRAP_CLAMP')
    public var GS_TEXTURE_WRAP_CLAMP;

    @:native('GS_TEXTURE_WRAP_MIRROR')
    public var GS_TEXTURE_WRAP_MIRROR;
}