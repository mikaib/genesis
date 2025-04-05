package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsPipeline')
@:unreflective
@:structAccess
private extern class NativeGsPipeline {
    // general state
    public var layout: GsVtxLayout;
    public var program: GsProgram;
    public var msaa_samples: Int;

    // blend
    public var blend_op: GsBlendOp;
    public var blend_src: GsBlendFactor;
    public var blend_dst: GsBlendFactor;
    public var blend_op_alpha: GsBlendOp;
    public var blend_src_alpha: GsBlendFactor;
    public var blend_dst_alpha: GsBlendFactor;
    public var blend_enabled: Int;

    // stencil
    public var stencil_test: Int;

    // depth
    public var depth_func: GsDepthFunc;
    public var depth_write: Int;
    public var depth_test: Int;

    inline public function destroy(): Void {
        Genesis.destroyPipeline(this);
    }
}

typedef GsPipeline = cpp.Star<NativeGsPipeline>;
