package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsShaderType')
private extern class NativeGsShaderType {}

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
extern enum abstract GsShaderType(NativeGsShaderType) {
    @:native('GS_SHADER_TYPE_VERTEX')
    public var GS_SHADER_TYPE_VERTEX;

    @:native('GS_SHADER_TYPE_FRAGMENT')
    public var GS_SHADER_TYPE_FRAGMENT;
}
