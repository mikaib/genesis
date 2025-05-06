package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('cpp.Struct<GsBufferIntent>')
private extern class NativeGsBufferIntent {}

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
extern enum abstract GsBufferIntent(NativeGsBufferIntent) {
    @:native('GS_BUFFER_INTENT_DRAW_STATIC')
    public var GS_BUFFER_INTENT_DRAW_STATIC;

    @:native('GS_BUFFER_INTENT_DRAW_DYNAMIC')
    public var GS_BUFFER_INTENT_DRAW_DYNAMIC;

    @:native('GS_BUFFER_INTENT_DRAW_STREAM')
    public var GS_BUFFER_INTENT_DRAW_STREAM;

    @:native('GS_BUFFER_INTENT_READ_STATIC')
    public var GS_BUFFER_INTENT_READ_STATIC;

    @:native('GS_BUFFER_INTENT_READ_DYNAMIC')
    public var GS_BUFFER_INTENT_READ_DYNAMIC;

    @:native('GS_BUFFER_INTENT_READ_STREAM')
    public var GS_BUFFER_INTENT_READ_STREAM;

    @:native('GS_BUFFER_INTENT_COPY_STATIC')
    public var GS_BUFFER_INTENT_COPY_STATIC;

    @:native('GS_BUFFER_INTENT_COPY_DYNAMIC')
    public var GS_BUFFER_INTENT_COPY_DYNAMIC;

    @:native('GS_BUFFER_INTENT_COPY_STREAM')
    public var GS_BUFFER_INTENT_COPY_STREAM;
}
