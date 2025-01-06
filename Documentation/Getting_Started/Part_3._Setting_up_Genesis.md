# Part 3 - Setting up Genesis
## Introduction
In this part, we will set up all the necessary components to get Genesis running.

## Prerequisites
This part assumes you've read the previous parts.

## Setting Up
### 1. The Backend
The first part is selecting the backend to use.
```hx
var backendType = Genesis.getOptimalBackendType();
var backend = Genesis.createBackend(backendType);
```
This code will find the optimal backend for the system and create a backend object.  
You may also manually select the backend:
```hx
var backend = Genesis.createBackend(GS_BACKEND_OPENGL);
```

### 2. The Config
The next part is creating a `GsConfig` object.  
The config contains various properties such as the backend and the window to use.
```hx
var config = Genesis.createConfig();
config.backend = backend;
config.window = getHWND(); // Function from Part 2
```
The `window` and `backend` properties are required.

### 3. Initialization
At this point you can initialize Genesis, which is required to further allocate resources like command lists, textures, etc.
```hx
Genesis.init(config);
```

### 4. The Command List
Now that you have Genesis initialized, you can create a command list.  
You will be able to request various operations on the command list, such as clearing the screen, drawing, etc.
```hx
var cmdList = Genesis.createCommandList();
```

### 5. Shaders and Programs
You will also need to set up your vertex and fragment shaders, and create a program.
```hx
var vertexShader = Genesis.createShader(GS_SHADER_VERTEX, "<vertex shader source>");
var fragmentShader = Genesis.createShader(GS_SHADER_FRAGMENT, "<fragment shader source>");

var program = Genesis.createProgram();
program.attachShader(vertexShader);
program.attachShader(fragmentShader);
program.build();
```

For the vertex shader source, you can use the following:
```glsl
#version 460 core

layout(location = 0) in vec3 aPosition;
layout(location = 1) in vec4 aColour;
out vec4 vColour;

void main() {
    gl_Position = vec4(aPosition, 1.0);
    vColour = aColour;
}
```

And for the fragment shader source, you can use the following:
```glsl
#version 460 core

in vec4 vColour;
out vec4 fragColor;

void main() {
    fragColor = vColour;
}
```

### 6. The Layout
The layout describes how the data is structured in the vertex buffer.
```hx
var layout = Genesis.createLayout();
layout.add(0, GS_ATTRIB_TYPE_FLOAT, 3); // position
layout.add(1, GS_ATTRIB_TYPE_FLOAT, 4); // colour
layout.build();
```

### 7. The Pipeline
The pipeline contains the shaders, layout, and other state information that the GPU needs to execute the commands in the command list.
```hx
var pipeline = Genesis.createPipeline();
pipeline.layout = layout;
pipeline.program = program;
```
The `layout` and `program` properties are required.

### 8. Vertex and Index Buffers
You will also need to create vertex and index buffers.
```hx
// vertex buffer
vertexBuffer = Genesis.createBuffer(GS_BUFFER_TYPE_VERTEX, GS_BUFFER_INTENT_DRAW_STATIC);
vertexBuffer.setData(vertices);

// index buffer
indexBuffer = Genesis.createBuffer(GS_BUFFER_TYPE_INDEX, GS_BUFFER_INTENT_DRAW_STATIC);
indexBuffer.setData(indices);
```
The buffer requires the type and intent, the data is of type `GsManagedData` which supports `Array<cpp.Float32>` and `Array<Int>`.

### 9. Main loop
In order to allow Genesis to run on the web, you will need to use Genesis' main loop system.  
Simply define a function of type `Void->Void` and pass it to `Genesis.startMainloop`.

```hx
public function frame(): Void {
    // ... drawing logic ...
}

// ... in main ...
Genesis.startMainloop(frame);
```

You can stop the main loop by calling `Genesis.stopMainloop`.  
When using SDL2, you should call this function on the `SDL_QUIT` event.

## Summary
You have now set up Genesis and are ready to start drawing.  
Below is a full overview of the code:
```hx
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
layout.add(1, GS_ATTRIB_TYPE_FLOAT, 4);  // color
layout.build();

// pipeline
pipeline = Genesis.createPipeline();
pipeline.layout = layout;
pipeline.program = program;

// vertex buffer
vertexBuffer = Genesis.createBuffer(GS_BUFFER_TYPE_VERTEX, GS_BUFFER_INTENT_DRAW_STATIC);
vertexBuffer.setData(vertices);

// index buffer
indexBuffer = Genesis.createBuffer(GS_BUFFER_TYPE_INDEX, GS_BUFFER_INTENT_DRAW_STATIC);
indexBuffer.setData(indices);
```



