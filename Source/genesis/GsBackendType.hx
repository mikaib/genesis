package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsBackendType')
private extern class NativeGsBackendType {}

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
extern enum abstract GsBackendType(NativeGsBackendType) {
    @:native('GS_BACKEND_OPENGL')
    public var GS_BACKEND_OPENGL;
}
