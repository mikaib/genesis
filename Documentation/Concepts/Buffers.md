# Buffers
## Introduction
In the [Layout](Layout.md) document, you learned how to describe the structure of the data in the vertex buffer.  
In this document, you will learn how to create and manage the vertex buffer itself.

## Buffer
A buffer is a term used to describe a piece of memory that stores data.  
In Genesis, a buffer is used to store vertex data, index data, or other data that you want to send to the GPU.

## Creating a Buffer
Creating a buffer is simple:
```hx
var buffer = Genesis.createBuffer(GS_BUFFER_TYPE_VERTEX, GS_BUFFER_INTENT_STATIC);
```

This creates a buffer object that is of type `GS_BUFFER_TYPE_VERTEX` and has the intent `GS_BUFFER_INTENT_STATIC`.
The intent is really useful as it allows the GPU to optimize the buffer for the intended use.

## Setting Data
After creating the buffer, you can set data to it:
```hx
buffer.setData(data, size);
```

You can also partially set data:
```hx
buffer.setPartialData(data, size, offset);
```

These functions expect `GsManagedData` for the data, which is an abstract that supports:
- `Array<cpp.Float32>`: For float data.
- `Array<Int>`: For integer data.

This type will only point to the data and will not copy it by itself.  
Only when you call `setData` or `setPartialData` will the data be copied to the buffer (on the GPU).  

`GsManagedData` does not support `Array<Float>`, this is because a cast to `Array<cpp.Float32>` is required which copies the data.

## Buffer Types
There are currently two types of buffers in Genesis:
- **Vertex Buffer**: This buffer is used to store vertex data.
- **Index Buffer**: This buffer is used to store index data.

## Buffer Intents
The buffer intents match the OpenGL buffer hints:
- **Static**: The data will not change.
- **Dynamic**: The data will change frequently.
- **Stream**: The data will change every frame.  
  
And:
- **Draw**: The data will be used for drawing.
- **Read**: The data will be read from the GPU.
- **Copy**: The data will be copied between buffers.

These intents are combined to something like `GS_BUFFER_INTENT_STATIC_DRAW`.  
Note that the intents may be completely ignored and is only a hint.

## Notes
- You will need to manually destroy the `GsBuffer` object after you are done with it.
- You will need to manually destroy the `GsUnmanagedData` object after you are done with it.
- `GsManagedData` only points to the data it was created with and will not copy it by itself, there is no need to destroy it.
- The buffer is currently not thread-safe. Using it from a different thread may result in undefined behavior.
- The intent is only a hint and may be ignored by the backend (or the driver the backend uses).