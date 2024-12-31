package genesis;

@:buildXml('<include name="${haxelib:genesis}/Source/Build.xml" />')
@:include('genesis.h')
extern class NativeGenesis {

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

    @:native('gs_layout_complete')
    public static function layoutComplete(layout: GsVtxLayout): Bool;

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
    public static inline function bufferSetData(buffer: GsBuffer, data: GsManagedBufferData): Void {
        nativeBufferSetData(buffer, data.getPtr(), data.getSize());
    }

    @:native('gs_buffer_set_partial_data')
    private static function nativeBufferSetPartialData(buffer: GsBuffer, data: cpp.Star<cpp.Void>, size: Int, offset: Int): Void;
    public static inline function bufferSetPartialData(buffer: GsBuffer, data: GsManagedBufferData, offset: Int): Void {
        nativeBufferSetPartialData(buffer, data.getPtr(), data.getSize(), offset);
    }

    @:native('gs_destroy_unmanaged_buffer_data')
    public static function destroyUnmanagedBufferData(data: GsUnmanagedBufferData): Void;

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

    @:native('gs_program_complete')
    public static function programComplete(program: GsProgram): Bool;

    @:native('gs_destroy_program')
    public static function destroyProgram(program: GsProgram): Void;

    @:native('gs_create_mainloop')
    private static function _createMainloop(fn: cpp.Callable<Void->Void>): Void;
    public static inline function startMainloop(fn: Void->Void): Void {
        GsMainloop.start(fn);
    }

    @:native('gs_stop_mainloop')
    public static function stopMainloop(): Void;

}

typedef Genesis = NativeGenesis;