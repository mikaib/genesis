package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsCapability')
private extern class NativeGsCapability {}

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
extern enum abstract GsCapability(NativeGsCapability) {
    @:native('GS_CAPABILITY_RENDERER')
    public var GS_CAPABILITY_RENDERER;
}
