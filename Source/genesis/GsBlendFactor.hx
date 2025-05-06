package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('cpp.Struct<GsBlendFactor>')
private extern class NativeGsBlendFactor {}

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
extern enum abstract GsBlendFactor(NativeGsBlendFactor) {
    @:native('GS_BLEND_FACTOR_ZERO')
    public var GS_BLEND_FACTOR_ZERO;

    @:native('GS_BLEND_FACTOR_ONE')
    public var GS_BLEND_FACTOR_ONE;

    @:native('GS_BLEND_FACTOR_SRC_COLOR')
    public var GS_BLEND_FACTOR_SRC_COLOR;

    @:native('GS_BLEND_FACTOR_ONE_MINUS_SRC_COLOR')
    public var GS_BLEND_FACTOR_ONE_MINUS_SRC_COLOR;

    @:native('GS_BLEND_FACTOR_DST_COLOR')
    public var GS_BLEND_FACTOR_DST_COLOR;

    @:native('GS_BLEND_FACTOR_ONE_MINUS_DST_COLOR')
    public var GS_BLEND_FACTOR_ONE_MINUS_DST_COLOR;

    @:native('GS_BLEND_FACTOR_SRC_ALPHA')
    public var GS_BLEND_FACTOR_SRC_ALPHA;

    @:native('GS_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA')
    public var GS_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA;

    @:native('GS_BLEND_FACTOR_DST_ALPHA')
    public var GS_BLEND_FACTOR_DST_ALPHA;

    @:native('GS_BLEND_FACTOR_ONE_MINUS_DST_ALPHA')
    public var GS_BLEND_FACTOR_ONE_MINUS_DST_ALPHA;

    @:native('GS_BLEND_FACTOR_CONSTANT_COLOR')
    public var GS_BLEND_FACTOR_CONSTANT_COLOR;

    @:native('GS_BLEND_FACTOR_ONE_MINUS_CONSTANT_COLOR')
    public var GS_BLEND_FACTOR_ONE_MINUS_CONSTANT_COLOR;

    @:native('GS_BLEND_FACTOR_CONSTANT_ALPHA')
    public var GS_BLEND_FACTOR_CONSTANT_ALPHA;

    @:native('GS_BLEND_FACTOR_ONE_MINUS_CONSTANT_ALPHA')
    public var GS_BLEND_FACTOR_ONE_MINUS_CONSTANT_ALPHA;

    @:native('GS_BLEND_FACTOR_SRC_ALPHA_SATURATE')
    public var GS_BLEND_FACTOR_SRC_ALPHA_SATURATE;
}
