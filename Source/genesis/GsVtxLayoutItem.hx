package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsVtxLayoutItem')
@:unreflective
@:structAccess
private extern class NativeGsVtxLayoutItem {
    public var index: Int;
    public var offset: Int;
    public var size_total: Int;    // size_per_item * components
    public var size_per_item: Int; // sizeof(type)
    public var components: Int;
    public var type: GsVtxAttribType;
    public var normalized: Bool;
}

typedef GsVtxLayoutItem = cpp.Star<NativeGsVtxLayoutItem>;
