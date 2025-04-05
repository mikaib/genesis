package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsVtxAttribType')
private extern class NativeGsVtxAttribType {}

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
extern enum abstract GsVtxAttribType(NativeGsVtxAttribType) {
    @:native('GS_ATTRIB_TYPE_UINT8')
    public var GS_ATTRIB_TYPE_UINT8;

    @:native('GS_ATTRIB_TYPE_INT16')
    public var GS_ATTRIB_TYPE_INT16;

    @:native('GS_ATTRIB_TYPE_FLOAT')
    public var GS_ATTRIB_TYPE_FLOAT;

    @:native('GS_ATTRIB_TYPE_UINT16')
    public var GS_ATTRIB_TYPE_UINT16;

    @:native('GS_ATTRIB_TYPE_UINT32')
    public var GS_ATTRIB_TYPE_UINT32;

    @:native('GS_ATTRIB_TYPE_INT32')
    public var GS_ATTRIB_TYPE_INT32;

    @:native('GS_ATTRIB_TYPE_INT8')
    public var GS_ATTRIB_TYPE_INT8;

    @:native('GS_ATTRIB_TYPE_DOUBLE')
    public var GS_ATTRIB_TYPE_DOUBLE;
}
