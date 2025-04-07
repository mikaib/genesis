package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('GsFramebuffer')
@:unreflective
@:structAccess
private extern class NativeGsFramebuffer {
    public var width: Int;
    public var height: Int;

    inline public function attachTexture(texture: GsTexture, type: GsFramebufferAttachmentType): Void {
        Genesis.framebufferAttachTexture(this, texture, type);
    }

    inline public function destroy(): Void {
        Genesis.destroyFramebuffer(this);
    }
}

typedef GsFramebuffer = cpp.Star<NativeGsFramebuffer>;
