package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
@:native('cpp.Struct<GsFramebufferAttachmentType>')
private extern class NativeGsFramebufferAttachmentType {}

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
extern enum abstract GsFramebufferAttachmentType(NativeGsFramebufferAttachmentType) {
    @:native('GS_FRAMEBUFFER_ATTACHMENT_COLOR')
    public var GS_FRAMEBUFFER_ATTACHMENT_COLOR;

    @:native('GS_FRAMEBUFFER_ATTACHMENT_DEPTH')
    public var GS_FRAMEBUFFER_ATTACHMENT_DEPTH;

    @:native('GS_FRAMEBUFFER_ATTACHMENT_STENCIL')
    public var GS_FRAMEBUFFER_ATTACHMENT_STENCIL;

    @:native('GS_FRAMEBUFFER_ATTACHMENT_DEPTH_STENCIL')
    public var GS_FRAMEBUFFER_ATTACHMENT_DEPTH_STENCIL;
}
