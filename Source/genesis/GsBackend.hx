package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsBackend')
@:unreflective
@:structAccess
extern class NativeGsBackend {
    public var type: GsBackendType;

    inline public function destroy(): Void{
        Genesis.destroyBackend(this);
    }
}

typedef GsBackend = cpp.Star<NativeGsBackend>;
