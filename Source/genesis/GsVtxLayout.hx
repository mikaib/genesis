package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsVtxLayout')
@:unreflective
@:structAccess
private extern class NativeGsVtxLayout {
    public var count: Int;
    public var stride: Int;
    public var components: Int;
    public var items: GsVtxLayoutItem;

    inline public function add(index: Int, type: GsVtxAttribType, count: Int): GsVtxLayout {
        Genesis.layoutAdd(this, index, type, count);
        return this;
    }

    inline public function complete(): Void {
        Genesis.layoutComplete(this);
    }

    inline public function destroy(): Void{
        Genesis.destroyLayout(this);
    }
}

typedef GsVtxLayout = cpp.Star<NativeGsVtxLayout>;
