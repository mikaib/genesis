package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsCubemapFace')
private extern class NativeGsCubemapFace {}

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
extern enum abstract GsCubemapFace(NativeGsCubemapFace) {
    @:native('GS_CUBEMAP_FACE_UP')
    public var GS_CUBEMAP_FACE_UP;

    @:native('GS_CUBEMAP_FACE_DOWN')
    public var GS_CUBEMAP_FACE_DOWN;

    @:native('GS_CUBEMAP_FACE_LEFT')
    public var GS_CUBEMAP_FACE_LEFT;

    @:native('GS_CUBEMAP_FACE_RIGHT')
    public var GS_CUBEMAP_FACE_RIGHT;

    @:native('GS_CUBEMAP_FACE_FRONT')
    public var GS_CUBEMAP_FACE_FRONT;

    @:native('GS_CUBEMAP_FACE_BACK')
    public var GS_CUBEMAP_FACE_BACK;

    @:native('GS_CUBEMAP_FACE_NONE')
    public var GS_CUBEMAP_FACE_NONE;
}