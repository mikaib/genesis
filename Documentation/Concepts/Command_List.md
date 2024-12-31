# Command List
## Introduction
Have you ever cooked a meal? If so, you know that you need to follow a recipe.  
The same is true for the GPU. The GPU needs to be told what to do, and that is where the command list comes in.  

## Command List
The command list is a list of commands that the GPU needs to execute. The user creates a command list and adds commands to it.     
When the user is done adding commands, they can "submit" the command list to the GPU.  
  
Your first step in using a command list is to create one:
```hx
var commandList = Genesis.createCommandList();
```

Simple, right? Now you can add commands to the command list:
```hx
commandList.begin();
commandList.setViewport(0, 0, 800, 600);
commandList.clear(GS_CLEAR_COLOR | GS_CLEAR_DEPTH);
commandList.end();
```

Cool! But this won't do anything yet... You need to submit the command list to the GPU:
```hx
commandList.submit();
```

And that's it! You have successfully created a command list and submitted it to the GPU, when `Genesis.frame()` is called, the GPU will execute your submitted command list.

## Notes
- You will need to always call `begin()` before adding commands and `end()` after adding commands.
- When issuing draw commands, you will need to have set the pipeline and layout. Else the validation of the command list will fail.
- Currently, the command list is not thread-safe by itself. You will need to synchronize access to the command list if you are using it in multiple threads.
- You will need to manually destroy the `GsCommandList` object after you are done with it.