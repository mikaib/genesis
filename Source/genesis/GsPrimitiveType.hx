package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('cpp.Struct<GsPrimitiveType>')
private extern class NativeGsPrimitiveType {}

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
extern enum abstract GsPrimitiveType(NativeGsPrimitiveType) {
    @:native('GS_PRIMITIVE_POINTS')
    public var GS_PRIMITIVE_POINTS;

    @:native('GS_PRIMITIVE_LINES')
    public var GS_PRIMITIVE_LINES;

    @:native('GS_PRIMITIVE_LINE_STRIP')
    public var GS_PRIMITIVE_LINE_STRIP;

    @:native('GS_PRIMITIVE_TRIANGLES')
    public var GS_PRIMITIVE_TRIANGLES;

    @:native('GS_PRIMITIVE_TRIANGLE_STRIP')
    public var GS_PRIMITIVE_TRIANGLE_STRIP;

    @:native('GS_PRIMITIVE_TRIANGLE_FAN')
    public var GS_PRIMITIVE_TRIANGLE_FAN;
}