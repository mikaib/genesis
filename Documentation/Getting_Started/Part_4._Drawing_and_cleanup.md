# Part 4 - Drawing and cleanup
## Introduction
In this part, we will draw a triangle and clean up the resources we've allocated.

## Prerequisites
This part assumes you've read the previous parts.

## Drawing
The first thing you should do is begin the command list.
```hx
cmdList.begin();
```

Next, you will need to reset the viewport and clear the screen.
```hx
cmdList.setViewport(0, 0, 800, 600);
cmdList.clear(GS_CLEAR_COLOR | GS_CLEAR_DEPTH);
```

Now you can bind any resources you need:
```hx
cmdList.usePipeline(pipeline);
cmdList.useBuffer(vertexBuffer);
cmdList.useBuffer(indexBuffer);
// ... etc ...
```

Finally, you can issue draw commands:
```hx
cmdList.drawIndexed(3);
```
The above command will draw 3 vertices using the previously bound buffers.

After you've added all the commands you need, you can end the command list:
```hx
cmdList.end();
```

And submit it:
```hx
cmdList.submit();
```

Last but not least, you will need to call `Genesis.frame()` to execute all the submitted command lists.
```hx
Genesis.frame();
```

Congratulations! You've drawn a triangle!

## Cleanup
You can manually destroy the resources you've allocated.  
  
NOTES:
- Most resources should be destroyed BEFORE uninitializing Genesis.
- The config and backend objects are exceptions, and should only be destoyed AFTER uninitializing Genesis.

```hx
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
```