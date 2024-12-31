## Introduction
If you've read the [Command List](Command_List.md) documentation, you know that the GPU needs a "recipe" to follow.  
A recipe not only contains instructions on what to do but also specifies the necessary ingredients.  
In order to do this, you need to create a pipeline.  
A pipeline contains the shaders, layout, and other state information that the GPU needs to execute the commands in the command list.  

## Pipeline
As stated earlier, the pipeline contains the shaders, layout, and other state information that the GPU needs to execute the commands in the command list.  
Creating a pipeline is simple:
```hx
var pipeline = Genesis.createPipeline();
```

After this you can set the shaders, layout, and other state information:
```hx
pipeline.layout = layout; // assuming layout is a GsVtxLayout object
```

## Notes
- You will need to manually destroy the `GsPipeline` object after you are done with it.
- If you modify the pipeline while it is in use, the GPU will still use the old pipeline until you re-issue a "use pipeline" command in the command list.
- The pipeline is not thread-safe by itself. You will need to synchronize access to the pipeline if you are using it in multiple threads.
- You should manually validate the pipeline before using it, otherwise the validation of the command list will fail.