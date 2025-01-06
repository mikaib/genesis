# Layout
## Introduction
GPUs are very powerful, but they do not understand anything if you blindly throw data at them.  
Consider the following triangle vertices:  
```hx
var vertices = [
    // pos                color
    -0.5, -0.5, 0.0,      1.0, 0.0, 0.0, 1.0,  // vertex 1
    0.5, -0.5, 0.0,       0.0, 1.0, 0.0, 1.0,  // vertex 2
    0.0, 0.5, 0.0,        0.0, 0.0, 1.0, 1.0   // vertex 3
];
```
We humans can clearly understand that this is a triangle with three vertices (position and color), but the GPU does not know that.  
The GPU needs to be told how to interpret this data, and that is where the layout comes in.  

## Layout
The layout describes how the data is structured in the vertex buffer. Creating and setting up a layout is extremely simple:  
```hx
layout = Genesis.createLayout();
layout.add(0, GS_ATTRIB_TYPE_FLOAT, 3);  // position
layout.add(1, GS_ATTRIB_TYPE_FLOAT, 4);  // color
layout.build()
```

This sample first creates a layout object and then adds two attributes to it:  
- The first attribute is at index 0, is of type `GS_ATTRIB_TYPE_FLOAT`, and has 3 components. This is the position attribute represented as a 3D vector.
- The second attribute is at index 1, is of type `GS_ATTRIB_TYPE_FLOAT`, and has 4 components. This is the color attribute represented as a 4D vector (rgba).

This layout can then be applied to the pipeline which in turn allows the GPU to understand the data that is being sent to it.

## Notes
- You will need to manually destroy the `GsVtxLayout` object after you are done with it.
- You should only specify the attributes that you really need. If you don't need a color attribute, don't add it to the layout.