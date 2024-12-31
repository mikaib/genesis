package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsBufferType')
private extern class NativeGsBufferType {}

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
extern enum abstract GsBufferType(NativeGsBufferType) {
    @:native('GS_BUFFER_TYPE_VERTEX')
    public var GS_BUFFER_TYPE_VERTEX;

    @:native('GS_BUFFER_TYPE_INDEX')
    public var GS_BUFFER_TYPE_INDEX;
}
