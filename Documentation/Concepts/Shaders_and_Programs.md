## Introduction
Have you ever seen the super cool effects in games like lighting, shadows, and reflections?  
All of these effects are made possible by shaders. Shaders are small programs that run on the GPU to manipulate the vertices and pixels of your application.  

## Shaders
There are a few types of shaders, and many ways to use them. You will most commonly use two types of shaders:
- **Vertex Shader**: This shader is used to manipulate the vertices of your geometry. A basic "hello world" vertex shader is one where you create a cool wave effect on your geometry.
- **Fragment Shader**: This shader is used to manipulate the pixels of your geometry. This is the shader you use to "color" your geometry.

Remember those drawing from your childhood where you had a bunch of dots, and you connected them to form a shape after which you colored it?  
The vertex shader is like moving those dots around, and the fragment shader is like coloring the final shape.  

You also have a bunch of other shaders types like: geometry shaders, compute shaders, tessellation shaders and then a whole other bunch for ray tracing.

## Writing Shaders
Shaders in Genesis are written in GLSL (OpenGL Shading Language). GLSL is very similar to C.  
Internally, SPIR-V is used to ensure compatibility with all backends.

To learn the basics of GLSL, I recommend LearnOpenGL's [Shader](https://learnopengl.com/Getting-started/Shaders) tutorial.  
If you understand the basics of GLSL, you can look at some examples on [Shadertoy](https://www.shadertoy.com/browse) to get some inspiration.

## Uniforms and Attributes
**WORK IN PROGRESS** `This section is not complete yet.`

## Program
A Program is a collection of shaders that are linked together. Setting them up is simple:
```hx
var program = Genesis.createProgram();
program.attachShader(vertexShader);
program.attachShader(fragmentShader);
program.build();
```

After building the program, you can use it in the pipeline.

## Uniform Buffer Objects
**WORK IN PROGRESS** `This section is not complete yet.`
