package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsConfig')
@:unreflective
@:structAccess
private extern class NativeGsConfig {
    public var backend: GsBackend;
    public var window: cpp.Star<cpp.Void>;

    inline public function destroy(): Void {
        Genesis.destroyConfig(this);
    }
}

typedef GsConfig = cpp.Star<NativeGsConfig>;
