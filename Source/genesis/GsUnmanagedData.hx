package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsUnmanagedBufferData')
@:unreflective
@:structAccess
private extern class NativeGsUnmanagedData {
    public var data: cpp.Star<cpp.Void>;
    public var size: Int;

    inline public function destroy(): Void {
        Genesis.destroyUnmanagedBufferData(this);
    }
}

typedef GsUnmanagedData = cpp.Star<NativeGsUnmanagedData>;
