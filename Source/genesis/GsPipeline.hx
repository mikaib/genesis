package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsPipeline')
@:unreflective
@:structAccess
private extern class NativeGsPipeline {
    public var layout: GsVtxLayout;
    public var program: GsProgram;
    public var blend_src: GsBlendFactor;
    public var blend_dst: GsBlendFactor;
    public var blend_op: GsBlendOp;
    public var blend_enabled: Int;
    public var msaa_samples: Int;

    inline public function destroy(): Void {
        Genesis.destroyPipeline(this);
    }
}

typedef GsPipeline = cpp.Star<NativeGsPipeline>;
