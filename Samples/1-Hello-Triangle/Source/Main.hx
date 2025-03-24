import glfw.GLFW;
import genesis.Genesis;
import genesis.GsClearFlags;

class Main {

    public static function main() {
        GLFW.glfwInit();
        var window = GLFW.glfwCreateWindow(800, 600, "Hello World", null, null);
        if (window == null) {
            GLFW.glfwTerminate();
            return;
        }

        GLFW.glfwMakeContextCurrent(window);

        // vtx/idx buffers
        var vertices: Array<cpp.Float32> = [
            -0.5, -0.5, 0.0, 1.0, 0.0, 0.0, 1.0,
            0.5, -0.5, 0.0, 0.0, 1.0, 0.0, 1.0,
            0.0, 0.5, 0.0, 0.0, 0.0, 1.0, 1.0
        ];

        var indices: Array<Int> = [
            0, 1, 2
        ];

        // backend
        var backend = Genesis.createBackend(Genesis.getOptimalBackendType());

        // config
        var config = Genesis.createConfig();
        config.backend = backend;

        // init
        Genesis.init(config);

        // cmd list
        var commandList = Genesis.createCommandList();

        // shader sources
        var vertexShaderSource = "
            #version 460 core

            layout(location = 0) in vec3 aPosition;
            layout(location = 1) in vec4 aColour;
            out vec4 vColour;

            void main() {
                gl_Position = vec4(aPosition, 1.0);
                vColour = aColour;
            }
        ";

        var fragmentShaderSource = "
            #version 460 core

            in vec4 vColour;
            out vec4 fragColor;

            void main() {
                fragColor = vColour;
            }
        ";
        // shaders
        var vertexShader = Genesis.createShader(GS_SHADER_TYPE_VERTEX, vertexShaderSource);
        var fragmentShader = Genesis.createShader(GS_SHADER_TYPE_FRAGMENT, fragmentShaderSource);

        // program
        var program = Genesis.createProgram();
        program.attachShader(vertexShader);
        program.attachShader(fragmentShader);
        program.build();

        // layout
        var layout = Genesis.createLayout();
        layout.add(0, GS_ATTRIB_TYPE_FLOAT, 3);  // position
        layout.add(1, GS_ATTRIB_TYPE_FLOAT, 4);  // color
        layout.build();

        // pipeline
        var pipeline = Genesis.createPipeline();
        pipeline.layout = layout;
        pipeline.program = program;

        // vertex buffer
        var vertexBuffer = Genesis.createBuffer(GS_BUFFER_TYPE_VERTEX, GS_BUFFER_INTENT_DRAW_STATIC);
        vertexBuffer.setData(vertices);

        // index buffer
        var indexBuffer = Genesis.createBuffer(GS_BUFFER_TYPE_INDEX, GS_BUFFER_INTENT_DRAW_STATIC);
        indexBuffer.setData(indices);

        while (GLFW.glfwWindowShouldClose(window) == 0) {
            commandList.begin();
            commandList.setViewport(0, 0, 800, 600);
            commandList.clear(GS_CLEAR_COLOR | GS_CLEAR_DEPTH);
            commandList.usePipeline(pipeline);
            commandList.useBuffer(vertexBuffer);
            commandList.useBuffer(indexBuffer);
            commandList.drawIndexed(3);
            commandList.end();

            commandList.submit();
            Genesis.frame();

            GLFW.glfwSwapBuffers(window);
            GLFW.glfwPollEvents();
        }

        // destroy resources
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
        GLFW.glfwTerminate();
    }

}