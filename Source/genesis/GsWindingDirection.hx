package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('cpp.Struct<GsWindingDirection>')
private extern class NativeGsWindingDirection {}

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
extern enum abstract GsWindingDirection(NativeGsWindingDirection) {
    @:native('GS_WINDING_DIRECTION_CW')
    public var GS_WINDING_DIRECTION_CW;

    @:native('GS_WINDING_DIRECTION_CCW')
    public var GS_WINDING_DIRECTION_CCW;
}