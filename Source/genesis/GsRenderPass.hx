package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsRenderPass')
@:unreflective
@:structAccess
private extern class NativeGsRenderPass {
    public var framebuffer: GsFramebuffer;

    inline public function destroy(): Void {
        Genesis.destroyRenderPass(this);
    }
}

typedef GsRenderPass = cpp.Star<NativeGsRenderPass>;
