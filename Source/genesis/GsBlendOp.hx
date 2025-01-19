package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsBlendOp')
private extern class NativeGsBlendOp {}

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
extern enum abstract GsBlendOp(NativeGsBlendOp) {
    @:native('GS_BLEND_OP_ADD')
    public var GS_BLEND_OP_ADD;

    @:native('GS_BLEND_OP_SUBTRACT')
    public var GS_BLEND_OP_SUBTRACT;

    @:native('GS_BLEND_OP_REVERSE_SUBTRACT')
    public var GS_BLEND_OP_REVERSE_SUBTRACT;

    @:native('GS_BLEND_OP_MIN')
    public var GS_BLEND_OP_MIN;

    @:native('GS_BLEND_OP_MAX')
    public var GS_BLEND_OP_MAX;
}
