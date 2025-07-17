package genesis;
import haxe.io.Bytes;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
#if (GS_STUB)
extern class NativeGenesis {
#else
extern class Genesis {
#end

    @:native('GS_VERSION_MAJOR')
    public static var versionMajor: Int;

    @:native('GS_VERSION_MINOR')
    public static var versionMinor: Int;

    @:native('GS_VERSION_PATCH')
    public static var versionPatch: Int;

    inline public static function getVersionString(): String {
        return versionMajor + '.' + versionMinor + '.' + versionPatch;
    }

    @:native('gs_layout_add')
    public static function layoutAdd(layout: GsVtxLayout, index: Int, type: GsVtxAttribType, count: Int): Bool;

    @:native('gs_layout_build')
    public static function layoutBuild(layout: GsVtxLayout): Void;

    @:native('gs_init')
    public static function init(config: GsConfig): Bool;

    @:native('gs_shutdown')
    public static function shutdown(): Void;

    @:native('gs_create_config')
    public static function createConfig(): GsConfig;

    @:native('gs_create_backend')
    public static function createBackend(type: GsBackendType): GsBackend;

    @:native('gs_create_layout')
    public static function createLayout(): GsVtxLayout;

    @:native('gs_destroy_config')
    public static function destroyConfig(config: GsConfig): Void;

    @:native('gs_destroy_backend')
    public static function destroyBackend(backend: GsBackend): Void;

    @:native('gs_destroy_layout')
    public static function destroyLayout(layout: GsVtxLayout): Void;

    @:native('gs_get_optimal_backend_type')
    public static function getOptimalBackendType(): GsBackendType;

    @:native('gs_create_command_list')
    public static function createCommandList(): GsCommandList;

    @:native('gs_destroy_command_list')
    public static function destroyCommandList(list: GsCommandList): Void;

    @:native('gs_command_list_clear')
    public static function commandListClear(list: GsCommandList): Void;

    @:native('gs_command_list_begin')
    public static function commandListBegin(list: GsCommandList): Void;

    @:native('gs_command_list_end')
    public static function commandListEnd(list: GsCommandList): Void;

    @:native('gs_command_list_submit')
    public static function commandListSubmit(list: GsCommandList): Void;

    @:native('gs_clear')
    private static function nativeClear(list: GsCommandList, flags: GsClearFlags, r: Float, g: Float, b: Float, a: Float): Void;
    public static inline function clear(list: GsCommandList, flags: GsClearFlags, r: Float = 0, g: Float = 0, b: Float = 0, a: Float = 1): Void {
        nativeClear(list, untyped __cpp__("(GsClearFlags){0}", flags), r, g, b, a);
    }

    @:native('gs_set_viewport')
    public static function setViewport(list: GsCommandList, x: Int, y: Int, width: Int, height: Int): Void;

    @:native('gs_use_pipeline')
    public static function usePipeline(list: GsCommandList, pipeline: GsPipeline): Void;

    @:native('gs_use_buffer')
    public static function useBuffer(list: GsCommandList, buffer: GsBuffer): Void;

    @:native('gs_use_texture')
    public static function useTexture(list: GsCommandList, texture: GsTexture, slot: Int): Void;

    @:native('gs_frame')
    public static function frame(): Void;

    @:native('gs_discard_frame')
    public static function discardFrame(): Void;

    @:native('gs_create_pipeline')
    public static function createPipeline(): GsPipeline;

    @:native('gs_destroy_pipeline')
    public static function destroyPipeline(pipeline: GsPipeline): Void;

    @:native('gs_pipeline_set_layout')
    public static function pipelineSetLayout(pipeline: GsPipeline, layout: GsVtxLayout): Void;

    @:native('gs_create_buffer')
    public static function createBuffer(type: GsBufferType, intent: GsBufferIntent): GsBuffer;

    @:native('gs_destroy_buffer')
    public static function destroyBuffer(buffer: GsBuffer): Void;

    @:native('gs_buffer_set_data')
    private static function nativeBufferSetData(buffer: GsBuffer, data: cpp.Star<cpp.Void>, size: Int): Void;
    public static inline function bufferSetData(buffer: GsBuffer, data: GsManagedData): Void {
        nativeBufferSetData(buffer, data.getPtr(), data.getSize());
    }

    @:native('gs_buffer_set_partial_data')
    private static function nativeBufferSetPartialData(buffer: GsBuffer, data: cpp.Star<cpp.Void>, size: Int, offset: Int): Void;
    public static inline function bufferSetPartialData(buffer: GsBuffer, data: GsManagedData, offset: Int): Void {
        nativeBufferSetPartialData(buffer, data.getPtr(), data.getSize(), offset);
    }

    @:native('gs_destroy_unmanaged_buffer_data')
    public static function destroyUnmanagedBufferData(data: GsUnmanagedData): Void;

    @:native('gs_draw_arrays')
    public static function drawArrays(list: GsCommandList, start: Int, count: Int): Void;

    @:native('gs_draw_indexed')
    public static function drawIndexed(list: GsCommandList, count: Int): Void;

    @:native('gs_set_scissor')
    public static function setScissor(list: GsCommandList, x: Int, y: Int, width: Int, height: Int): Void;

    @:native('gs_disable_scissor')
    public static function disableScissor(list: GsCommandList): Void;

    @:native('gs_create_shader')
    public static function createShader(type: GsShaderType, source: cpp.ConstCharStar): GsShader;

    @:native('gs_destroy_shader')
    public static function destroyShader(shader: GsShader): Void;

    @:native('gs_create_program')
    public static function createProgram(): GsProgram;

    @:native('gs_program_attach_shader')
    public static function programAttachShader(program: GsProgram, shader: GsShader): Void;

    @:native('gs_program_build')
    public static function programBuild(program: GsProgram): Void;

    @:native('gs_destroy_program')
    public static function destroyProgram(program: GsProgram): Void;

    @:native('gs_create_mainloop')
    private static function _createMainloop(fn: cpp.Callable<Void->Void>): Void;
    public static inline function startMainloop(fn: Void->Void): Void {
        GsMainloop.start(fn);
    }

    @:native('gs_stop_mainloop')
    public static function stopMainloop(): Void;

    @:native('gs_create_texture')
    public static function createTexture(width: Int, height: Int, format: GsTextureFormat, wrapS: GsTextureWrap, wrapT: GsTextureWrap, min: GsTextureFilter, mag: GsTextureFilter): GsTexture;

    public static inline function createTextureSimple(width: Int, height: Int, format: GsTextureFormat): GsTexture {
        return createTexture(width, height, format, GS_TEXTURE_WRAP_REPEAT, GS_TEXTURE_WRAP_REPEAT, GS_TEXTURE_FILTER_LINEAR, GS_TEXTURE_FILTER_LINEAR);
    }

    @:native('gs_create_cubemap')
    public static function createCubemap(width: Int, height: Int, format: GsTextureFormat, wrapS: GsTextureWrap, wrapT: GsTextureWrap, wrapR: GsTextureWrap, min: GsTextureFilter, mag: GsTextureFilter): GsTexture;

    @:native('gs_texture_set_data')
    private static function nativeTextureSetData(texture: GsTexture, data: cpp.Star<cpp.Void>): Void;
    public static inline function textureSetData(texture: GsTexture, data: Bytes): Void {
        final ptr: cpp.Pointer<cpp.Void> = cpp.Pointer.arrayElem(data.getData(), 0).reinterpret();
        nativeTextureSetData(texture, ptr.ptr);
    }

    @:native('gs_texture_set_face_data')
    private static function nativeTextureSetFaceData(texture: GsTexture, face: GsCubemapFace, data: cpp.Star<cpp.Void>): Void;
    public static inline function textureSetFaceData(texture: GsTexture, face: GsCubemapFace, data: Bytes): Void {
        final ptr: cpp.Pointer<cpp.Void> = cpp.Pointer.arrayElem(data.getData(), 0).reinterpret();
        nativeTextureSetFaceData(texture, face, ptr.ptr);
    }

    @:native('gs_texture_clear')
    public static function textureClear(texture: GsTexture): Void;

    @:native('gs_texture_generate_mipmaps')
    public static function textureGenerateMipmaps(texture: GsTexture): Void; // As immediate command

    @:native('gs_destroy_texture')
    public static function destroyTexture(texture: GsTexture): Void;

    @:native('gs_get_uniform_location')
    public static function getUniformLocation(program: GsProgram, name: cpp.ConstCharStar): GsUniformLocation;

    @:native('gs_uniform_set_int')
    public static function uniformSetInt(list: GsCommandList, location: GsUniformLocation, value: Int): Void;

    @:native('gs_uniform_set_float')
    public static function uniformSetFloat(list: GsCommandList, location: GsUniformLocation, value: cpp.Float32): Void;

    @:native('gs_uniform_set_vec2')
    public static function uniformSetVec2(list: GsCommandList, location: GsUniformLocation, x: cpp.Float32, y: cpp.Float32): Void;

    @:native('gs_uniform_set_vec3')
    public static function uniformSetVec3(list: GsCommandList, location: GsUniformLocation, x: cpp.Float32, y: cpp.Float32, z: cpp.Float32): Void;

    @:native('gs_uniform_set_vec4')
    public static function uniformSetVec4(list: GsCommandList, location: GsUniformLocation, x: cpp.Float32, y: cpp.Float32, z: cpp.Float32, w: cpp.Float32): Void;

    @:native('gs_uniform_set_mat4')
    public static function uniformSetMat4(list: GsCommandList, location: GsUniformLocation, m00: cpp.Float32, m01: cpp.Float32, m02: cpp.Float32, m03: cpp.Float32, m10: cpp.Float32, m11: cpp.Float32, m12: cpp.Float32, m13: cpp.Float32, m20: cpp.Float32, m21: cpp.Float32, m22: cpp.Float32, m23: cpp.Float32, m30: cpp.Float32, m31: cpp.Float32, m32: cpp.Float32, m33: cpp.Float32): Void;

    @:native('gs_copy_texture')
    public static function copyTexture(list: GsCommandList, src: GsTexture, dst: GsTexture): Void;

    @:native('gs_resolve_texture')
    public static function resolveTexture(list: GsCommandList, src: GsTexture, dst: GsTexture): Void;

    @:native('gs_copy_texture_partial')
    public static function copyTexturePartial(list: GsCommandList, src: GsTexture, dst: GsTexture, srcX: Int, srcY: Int, dstX: Int, dstY: Int, width: Int, height: Int): Void;

    @:native('gs_generate_mipmaps') // As command
    public static function generateMipmaps(list: GsCommandList, texture: GsTexture): Void;

    @:native('gs_has_capability')
    public static function hasCapability(cap: GsCapability): Int;

    @:native('gs_create_framebuffer')
    public static function createFramebuffer(width: Int, height: Int): GsFramebuffer;

    @:native('gs_destroy_framebuffer')
    public static function destroyFramebuffer(fb: GsFramebuffer): Void;

    @:native('gs_create_render_pass')
    public static function createRenderPass(fb: GsFramebuffer): GsRenderPass;

    @:native('gs_destroy_render_pass')
    public static function destroyRenderPass(pass: GsRenderPass): Void;

    @:native('gs_begin_render_pass')
    public static function beginRenderPass(list: GsCommandList, pass: GsRenderPass): Void;

    @:native('gs_end_render_pass')
    public static function endRenderPass(list: GsCommandList): Void;

    @:native('gs_framebuffer_attach_texture')
    public static function framebufferAttachTexture(fb: GsFramebuffer, texture: GsTexture, attachment: GsFramebufferAttachmentType): Void;
}

#if (GS_STUB)
@:unreflective
class _Genesis {
    public static function layoutAdd(layout: GsVtxLayout, index: Int, type: GsVtxAttribType, count: Int): Bool {
        return NativeGenesis.layoutAdd(layout, index, type, count);
    }

    public static function layoutBuild(layout: GsVtxLayout): Void {
        NativeGenesis.layoutBuild(layout);
    }

    public static function init(config: GsConfig): Bool {
        return NativeGenesis.init(config);
    }

    public static function shutdown(): Void {
        NativeGenesis.shutdown();
    }

    public static function createConfig(): GsConfig {
        return NativeGenesis.createConfig();
    }

    public static function createBackend(type: GsBackendType): GsBackend {
        return NativeGenesis.createBackend(type);
    }

    public static function createLayout(): GsVtxLayout {
        return NativeGenesis.createLayout();
    }

    public static function destroyConfig(config: GsConfig): Void {
        NativeGenesis.destroyConfig(config);
    }

    public static function destroyBackend(backend: GsBackend): Void {
        NativeGenesis.destroyBackend(backend);
    }

    public static function destroyLayout(layout: GsVtxLayout): Void {
        NativeGenesis.destroyLayout(layout);
    }

    public static function getOptimalBackendType(): GsBackendType {
        return NativeGenesis.getOptimalBackendType();
    }

    public static function createCommandList(): GsCommandList {
        return NativeGenesis.createCommandList();
    }

    public static function destroyCommandList(list: GsCommandList): Void {
        NativeGenesis.destroyCommandList(list);
    }

    public static function commandListClear(list: GsCommandList): Void {
        NativeGenesis.commandListClear(list);
    }

    public static function commandListBegin(list: GsCommandList): Void {
        NativeGenesis.commandListBegin(list);
    }

    public static function commandListEnd(list: GsCommandList): Void {
        NativeGenesis.commandListEnd(list);
    }

    public static function commandListSubmit(list: GsCommandList): Void {
        NativeGenesis.commandListSubmit(list);
    }

    public static function clear(list: GsCommandList, flags: GsClearFlags, r: Float, g: Float, b: Float, a: Float): Void {
        NativeGenesis.clear(list, flags, r, g, b, a);
    }

    public static function setViewport(list: GsCommandList, x: Int, y: Int, width: Int, height: Int): Void {
        NativeGenesis.setViewport(list, x, y, width, height);
    }

    public static function usePipeline(list: GsCommandList, pipeline: GsPipeline): Void {
        NativeGenesis.usePipeline(list, pipeline);
    }

    public static function useBuffer(list: GsCommandList, buffer: GsBuffer): Void {
        NativeGenesis.useBuffer(list, buffer);
    }

    public static function useTexture(list: GsCommandList, texture: GsTexture, slot: Int): Void {
        NativeGenesis.useTexture(list, texture, slot);
    }

    public static function frame(): Void {
        NativeGenesis.frame();
    }

    public static function discardFrame(): Void {
        NativeGenesis.discardFrame();
    }

    public static function createPipeline(): GsPipeline {
        return NativeGenesis.createPipeline();
    }

    public static function destroyPipeline(pipeline: GsPipeline): Void {
        NativeGenesis.destroyPipeline(pipeline);
    }

    public static function pipelineSetLayout(pipeline: GsPipeline, layout: GsVtxLayout): Void {
        NativeGenesis.pipelineSetLayout(pipeline, layout);
    }

    public static function createBuffer(type: GsBufferType, intent: GsBufferIntent): GsBuffer {
        return NativeGenesis.createBuffer(type, intent);
    }

    public static function destroyBuffer(buffer: GsBuffer): Void {
        NativeGenesis.destroyBuffer(buffer);
    }

    public static function bufferSetData(buffer: GsBuffer, data: GsManagedData): Void {
        NativeGenesis.bufferSetData(buffer, data);
    }

    public static function bufferSetPartialData(buffer: GsBuffer, data: GsManagedData, offset: Int): Void {
        NativeGenesis.bufferSetPartialData(buffer, data, offset);
    }

    public static function destroyUnmanagedBufferData(data: GsUnmanagedData): Void {
        NativeGenesis.destroyUnmanagedBufferData(data);
    }

    public static function drawArrays(list: GsCommandList, start: Int, count: Int): Void {
        NativeGenesis.drawArrays(list, start, count);
    }

    public static function drawIndexed(list: GsCommandList, count: Int): Void {
        NativeGenesis.drawIndexed(list, count);
    }

    public static function setScissor(list: GsCommandList, x: Int, y: Int, width: Int, height: Int): Void {
        NativeGenesis.setScissor(list, x, y, width, height);
    }

    public static function disableScissor(list: GsCommandList): Void {
        NativeGenesis.disableScissor(list);
    }

    public static function createShader(type: GsShaderType, source: cpp.ConstCharStar): GsShader {
        return NativeGenesis.createShader(type, source);
    }

    public static function destroyShader(shader: GsShader): Void {
        NativeGenesis.destroyShader(shader);
    }

    public static function createProgram(): GsProgram {
        return NativeGenesis.createProgram();
    }

    public static function programAttachShader(program: GsProgram, shader: GsShader): Void {
        NativeGenesis.programAttachShader(program, shader);
    }

    public static function programBuild(program: GsProgram) {
        NativeGenesis.programBuild(program);
    }

    public static function destroyProgram(program: GsProgram): Void {
        NativeGenesis.destroyProgram(program);
    }

    private static function _createMainloop(fn: cpp.Callable<Void->Void>): Void {
        @:privateAccess NativeGenesis._createMainloop(fn);
    }

    public static function startMainloop(fn: Void->Void): Void {
        NativeGenesis.startMainloop(fn);
    }

    public static function stopMainloop(): Void {
        NativeGenesis.stopMainloop();
    }

    public static function createTexture(width: Int, height: Int, format: GsTextureFormat, wrapS: GsTextureWrap, wrapT: GsTextureWrap, min: GsTextureFilter, mag: GsTextureFilter): GsTexture {
        return NativeGenesis.createTexture(width, height, format, wrapS, wrapT, min, mag);
    }

    public static function createTextureSimple(width: Int, height: Int, format: GsTextureFormat): GsTexture {
        return NativeGenesis.createTextureSimple(width, height, format);
    }

    public static function createCubemap(width: Int, height: Int, format: GsTextureFormat, wrapS: GsTextureWrap, wrapT: GsTextureWrap, wrapR: GsTextureWrap, min: GsTextureFilter, mag: GsTextureFilter): GsTexture {
        return NativeGenesis.createCubemap(width, height, format, wrapS, wrapT, wrapR, min, mag);
    }

    public static function textureSetData(texture: GsTexture, data: Bytes): Void {
        NativeGenesis.textureSetData(texture, data);
    }

    public static function textureSetFaceData(texture: GsTexture, face: GsCubemapFace, data: Bytes): Void {
        NativeGenesis.textureSetFaceData(texture, face, data);
    }

    public static function textureGenerateMipmaps(texture: GsTexture): Void {
        NativeGenesis.textureGenerateMipmaps(texture);
    }

    public static function destroyTexture(texture: GsTexture): Void {
        NativeGenesis.destroyTexture(texture);
    }

    public static function getUniformLocation(program: GsProgram, name: cpp.ConstCharStar): GsUniformLocation {
        return NativeGenesis.getUniformLocation(program, name);
    }

    public static function uniformSetInt(list: GsCommandList, location: GsUniformLocation, value: Int): Void {
        NativeGenesis.uniformSetInt(list, location, value);
    }

    public static function uniformSetFloat(list: GsCommandList, location: GsUniformLocation, value: cpp.Float32): Void {
        NativeGenesis.uniformSetFloat(list, location, value);
    }

    public static function uniformSetVec2(list: GsCommandList, location: GsUniformLocation, x: cpp.Float32, y: cpp.Float32): Void {
        NativeGenesis.uniformSetVec2(list, location, x, y);
    }

    public static function uniformSetVec3(list: GsCommandList, location: GsUniformLocation, x: cpp.Float32, y: cpp.Float32, z: cpp.Float32): Void {
        NativeGenesis.uniformSetVec3(list, location, x, y, z);
    }

    public static function uniformSetVec4(list: GsCommandList, location: GsUniformLocation, x: cpp.Float32, y: cpp.Float32, z: cpp.Float32, w: cpp.Float32): Void {
        NativeGenesis.uniformSetVec4(list, location, x, y, z, w);
    }

    public static function uniformSetMat4(list: GsCommandList, location: GsUniformLocation, m00: cpp.Float32, m01: cpp.Float32, m02: cpp.Float32, m03: cpp.Float32, m10: cpp.Float32, m11: cpp.Float32, m12: cpp.Float32, m13: cpp.Float32, m20: cpp.Float32, m21: cpp.Float32, m22: cpp.Float32, m23: cpp.Float32, m30: cpp.Float32, m31: cpp.Float32, m32: cpp.Float32, m33: cpp.Float32): Void {
        NativeGenesis.uniformSetMat4(list, location, m00, m01, m02, m03, m10, m11, m12, m13, m20, m21, m22, m23, m30, m31, m32, m33);
    }

    public static function copyTexture(list: GsCommandList, src: GsTexture, dst: GsTexture): Void {
        NativeGenesis.copyTexture(list, src, dst);
    }

    public static function resolveTexture(list: GsCommandList, src: GsTexture, dst: GsTexture): Void {
        NativeGenesis.resolveTexture(list, src, dst);
    }

    public static function copyTexturePartial(list: GsCommandList, src: GsTexture, dst: GsTexture, srcX: Int, srcY: Int, dstX: Int, dstY: Int, width: Int, height: Int): Void {
        NativeGenesis.copyTexturePartial(list, src, dst, srcX, srcY, dstX, dstY, width, height);
    }

    public static function generateMipmaps(list: GsCommandList, texture: GsTexture): Void {
        NativeGenesis.generateMipmaps(list, texture);
    }

    public static function createRenderPass(fb: GsFramebuffer): GsRenderPass {
        return NativeGenesis.createRenderPass(fb);
    }

    public static function destroyRenderPass(pass: GsRenderPass): Void {
        NativeGenesis.destroyRenderPass(pass);
    }

    public static function beginRenderPass(list: GsCommandList, pass: GsRenderPass): Void {
        NativeGenesis.beginRenderPass(list, pass);
    }

    public static function endRenderPass(list: GsCommandList): Void {
        NativeGenesis.endRenderPass(list);
    }

    public static function hasCapability(cap: GsCapability): Int {
        return NativeGenesis.hasCapability(cap);
    }

    public static function textureClear(texture: GsTexture): Void {
        NativeGenesis.textureClear(texture);
    }

    public static function createFramebuffer(width: Int, height: Int): GsFramebuffer {
        return NativeGenesis.createFramebuffer(width, height);
    }

    public static function destroyFramebuffer(fb: GsFramebuffer): Void {
        NativeGenesis.destroyFramebuffer(fb);
    }

    public static function framebufferAttachTexture(fb: GsFramebuffer, texture: GsTexture, attachment: GsFramebufferAttachmentType): Void {
        NativeGenesis.framebufferAttachTexture(fb, texture, attachment);
    }
}
typedef Genesis = _Genesis;
#end