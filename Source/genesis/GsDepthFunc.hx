package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('cpp.Struct<GsDepthFunc>')
private extern class NativeGsDepthFunc {}

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
extern enum abstract GsDepthFunc(NativeGsDepthFunc) {
    @:native('GS_DEPTH_FUNC_NEVER')
    public var GS_DEPTH_FUNC_NEVER;

    @:native('GS_DEPTH_FUNC_LESS')
    public var GS_DEPTH_FUNC_LESS;

    @:native('GS_DEPTH_FUNC_EQUAL')
    public var GS_DEPTH_FUNC_EQUAL;

    @:native('GS_DEPTH_FUNC_LESS_EQUAL')
    public var GS_DEPTH_FUNC_LESS_EQUAL;

    @:native('GS_DEPTH_FUNC_GREATER')
    public var GS_DEPTH_FUNC_GREATER;

    @:native('GS_DEPTH_FUNC_NOT_EQUAL')
    public var GS_DEPTH_FUNC_NOT_EQUAL;

    @:native('GS_DEPTH_FUNC_GREATER_EQUAL')
    public var GS_DEPTH_FUNC_GREATER_EQUAL;

    @:native('GS_DEPTH_FUNC_ALWAYS')
    public var GS_DEPTH_FUNC_ALWAYS;
}
