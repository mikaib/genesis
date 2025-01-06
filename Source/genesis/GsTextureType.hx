package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsTextureType')
private extern class NativeGsTextureType {}

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
extern enum abstract GsTextureType(NativeGsTextureType) {
    @:native('GS_TEXTURE_TYPE_2D')
    public var GS_TEXTURE_TYPE_2D;

    @:native('GS_TEXTURE_TYPE_CUBEMAP')
    public var GS_TEXTURE_TYPE_CUBEMAP;
}