package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsPipeline')
@:unreflective
@:structAccess
private extern class NativeGsPipeline {
    public var layout: GsVtxLayout;
    public var program: GsProgram;

    inline public function destroy(): Void {
        Genesis.destroyPipeline(this);
    }
}

typedef GsPipeline = cpp.Star<NativeGsPipeline>;