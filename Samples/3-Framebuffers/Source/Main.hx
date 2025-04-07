import glfw.GLFW;
import genesis.Genesis;
import genesis.GsClearFlags;
import genesis.GsBackend;
import genesis.GsConfig;
import genesis.GsCommandList;
import genesis.GsShader;
import genesis.GsProgram;
import genesis.GsVtxLayout;
import genesis.GsPipeline;
import genesis.GsBuffer;
import genesis.GsTexture;
import genesis.GsTextureFilter;
import genesis.GsTextureWrap;
import haxe.io.Bytes;
import genesis.GsUniformLocation;
import stb.Image;
import genesis.GsFramebuffer;
import genesis.GsFramebufferAttachmentType;
import haxe.io.Path;
import sys.io.File;

class Main {

    public var vertexData: Array<cpp.Float32> = [
        // x,    y,   z,   u,  v
        -0.5, -0.5, 0.0, 0.0, 1.0,
         0.5, -0.5, 0.0, 1.0, 1.0,
         0.5,  0.5, 0.0, 1.0, 0.0,
        -0.5,  0.5, 0.0, 0.0, 0.0
    ];

    public var indexData: Array<Int> = [
        0, 1, 2,
        2, 3, 0
    ];

    public var vertexShaderSource: String = "
        #version 460 core

        layout(location = 0) in vec3 aPosition;
        layout(location = 1) in vec2 aTexCoord;
        out vec2 vTexCoord;

        void main() {
            gl_Position = vec4(aPosition, 1.0);
            vTexCoord = aTexCoord;
        }
    ";

    public var fragmentShaderSource: String = "
        #version 460 core

        uniform sampler2D uTexture;
        in vec2 vTexCoord;
        out vec4 fragColor;

        void main() {
            fragColor = texture(uTexture, vTexCoord);
        }
    ";

    public var window: cpp.Pointer<GLFWwindow>;
    public var backend: GsBackend;
    public var config: GsConfig;
    public var commandList: GsCommandList;
    public var pipeline: GsPipeline;
    public var layout: GsVtxLayout;
    public var program: GsProgram;
    public var vertexShader: GsShader;
    public var fragmentShader: GsShader;
    public var vertexBuffer: GsBuffer;
    public var indexBuffer: GsBuffer;
    public var textureUniform: GsUniformLocation;
    public var texture: GsTexture;
    public var framebuffer1: GsFramebuffer;
    public var framebuffer1Color: GsTexture;
    public var framebuffer2: GsFramebuffer;
    public var framebuffer2Color: GsTexture;

    public function initWindow() {
        GLFW.glfwInit();
        GLFW.glfwWindowHint(GLFW.GLFW_CONTEXT_VERSION_MAJOR, 4);
        GLFW.glfwWindowHint(GLFW.GLFW_CONTEXT_VERSION_MINOR, 6);
        GLFW.glfwWindowHint(GLFW.GLFW_OPENGL_PROFILE, GLFW.GLFW_OPENGL_CORE_PROFILE);
        GLFW.glfwWindowHint(GLFW.GLFW_OPENGL_DEBUG_CONTEXT, 0);
        GLFW.glfwWindowHint(GLFW.GLFW_RESIZABLE, 0);

        GLFW.glfwInit();
        GLFW.glfwWindowHint(GLFW.GLFW_RESIZABLE, 0);

        window = GLFW.glfwCreateWindow(600, 600, "Genesis [2 - Textured Quad]", null, null);
        if (window == null) {
            GLFW.glfwTerminate();
            return;
        }

        GLFW.glfwMakeContextCurrent(window);
    }

    public function destroyWindow() {
        GLFW.glfwTerminate();
    }

    public function initGraphics() {
        // backend
        backend = Genesis.createBackend(Genesis.getOptimalBackendType());

        // config
        config = Genesis.createConfig();
        config.backend = backend;

        // init
        Genesis.init(config);

        // cmd list
        commandList = Genesis.createCommandList();

        // shaders
        vertexShader = Genesis.createShader(GS_SHADER_TYPE_VERTEX, vertexShaderSource);
        fragmentShader = Genesis.createShader(GS_SHADER_TYPE_FRAGMENT, fragmentShaderSource);

        // program
        program = Genesis.createProgram();
        program.attachShader(vertexShader);
        program.attachShader(fragmentShader);
        program.build();

        // layout
        layout = Genesis.createLayout();
        layout.add(0, GS_ATTRIB_TYPE_FLOAT, 3);  // position
        layout.add(1, GS_ATTRIB_TYPE_FLOAT, 2);  // uv
        layout.build();

        // pipeline
        pipeline = Genesis.createPipeline();
        pipeline.layout = layout;
        pipeline.program = program;
        pipeline.msaa_samples = 4;

        // vertex buffer
        vertexBuffer = Genesis.createBuffer(GS_BUFFER_TYPE_VERTEX, GS_BUFFER_INTENT_DRAW_STATIC);
        vertexBuffer.setData(vertexData);

        // index buffer
        indexBuffer = Genesis.createBuffer(GS_BUFFER_TYPE_INDEX, GS_BUFFER_INTENT_DRAW_STATIC);
        indexBuffer.setData(indexData);

        // uniforms
        textureUniform = program.getUniformLocation("uTexture");

        // texture
        var imgPath = Path.join([ Path.directory(Sys.programPath()), '..', '..', 'image.png' ]);
        var imgBytes = File.getBytes(imgPath);
        var imgData = Image.load_from_memory(imgBytes.getData(), imgBytes.length, 4);
        texture = Genesis.createTextureSimple(imgData.w, imgData.h, GS_TEXTURE_FORMAT_RGBA8); // You can use `createTexture` for more options, or you may modify the texture struct before calling setData
        texture.setData(Bytes.ofData(imgData.bytes));
        texture.generateMipmaps();

        // framebuffer 1
        framebuffer1Color = Genesis.createTextureSimple(600, 600, GS_TEXTURE_FORMAT_RGBA8);
        framebuffer1Color.clear();
        framebuffer1 = Genesis.createFramebuffer(600, 600);
        framebuffer1.attachTexture(framebuffer1Color, GS_FRAMEBUFFER_ATTACHMENT_COLOR);

        // framebuffer 2
        framebuffer2Color = Genesis.createTextureSimple(600, 600, GS_TEXTURE_FORMAT_RGBA8);
        framebuffer2Color.clear();
        framebuffer2 = Genesis.createFramebuffer(600, 600);
        framebuffer2.attachTexture(framebuffer2Color, GS_FRAMEBUFFER_ATTACHMENT_COLOR);
    }

    public function destroyGraphics() {
        // destroy resources
        framebuffer2.destroy();
        framebuffer2Color.destroy();
        framebuffer1.destroy();
        framebuffer1Color.destroy();
        texture.destroy();
        commandList.destroy();
        pipeline.destroy();
        layout.destroy();
        vertexBuffer.destroy();
        indexBuffer.destroy();
        vertexShader.destroy();
        fragmentShader.destroy();
        program.destroy();

        // shutdown genesis
        Genesis.shutdown();

        // destroy backend & config
        backend.destroy();
        config.destroy();
    }

    public function frame() {
        commandList.begin();
        commandList.useFramebuffer(framebuffer1);
        commandList.setViewport(0, 0, 600, 600);
        commandList.clear(GS_CLEAR_COLOR | GS_CLEAR_DEPTH);
        commandList.usePipeline(pipeline);
        commandList.setInt(textureUniform, 0);
        commandList.useBuffer(vertexBuffer);
        commandList.useBuffer(indexBuffer);
        commandList.useTexture(texture, 0);
        commandList.drawIndexed(6);
        commandList.copyTexture(framebuffer1Color, framebuffer2Color);
        commandList.useFramebuffer(null);
        commandList.setViewport(0, 0, 600, 600);
        commandList.clear(GS_CLEAR_COLOR | GS_CLEAR_DEPTH);
        commandList.useTexture(framebuffer2Color, 0);
        commandList.drawIndexed(6);
        commandList.end();
        commandList.submit();
    }

    public function loop(): Void {
        if (GLFW.glfwWindowShouldClose(window) == 1) {
            destroy();
            return;
        }

        frame();

        Genesis.frame();
        GLFW.glfwSwapBuffers(window);
        GLFW.glfwPollEvents();
    }

    public function init() {
        initWindow();
        initGraphics();

        Genesis.startMainloop(loop);
    }

    public function destroy() {
        Genesis.stopMainloop();
        destroyGraphics();
        destroyWindow();
    }

    public static function main() {
        var app = new Main();
        app.init();
    }

    public function new() {}

}