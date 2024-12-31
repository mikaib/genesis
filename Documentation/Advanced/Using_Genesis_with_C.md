# Using Genesis with C
## Introduction
Genesis is a graphics library made for Haxe, but the library is written in C.
This means that if you port over some Haxe code to C (for performance reasons, for example), you can still use Genesis.
This document will tell you how to use Genesis with C.

## Importing the Library
Genesis is really simple to import, all basic functions are in the `genesis.h` header file.
To import the library, you need to include the header file:
```c
#include <genesis.h>
```

If you need access to the backend-specific functions, you can include the backend-specific header file, for OpenGL 4.6 this would be:
```c
#include <genesis_gl460.h>
```

## Similarities
Much of the functionality in Genesis maps nearly 1:1 to the Haxe API.
For example the initialization of a `GsConfig` object in Haxe:
```hx
config = Genesis.createConfig();
config.window = getHWND(window);
config.backend = backend;
```

Would look like this in C:
```c
GsConfig* config = gs_create_config();
config->backend = backend;
config->window = getHWND(window);
```

## Differences
Haxe has some shortcuts that C does not have, the most notable one is the command list.  
The following code in Haxe:
```hx
var commandList = Genesis.createCommandList();

commandList.begin();
commandList.clear(GS_CLEAR_COLOR | GS_CLEAR_DEPTH);
commandList.end();

commandList.submit();
```

Would become the following in C:
```c
GsCommandList *list = gs_create_command_list();

gs_command_list_begin(list);
gs_clear(list, GS_CLEAR_COLOR | GS_CLEAR_DEPTH, 0, 0, 0, 1);
gs_command_list_end(list);

gs_command_list_submit(list);
```

Notice how in C you have to call functions prefixed with `gs_` and you have to pass the command list to the functions.  
While in Haxe you can call the functions directly on the command list object.  
  
In Haxe there is also an alternative way to work with Genesis, which more closely resembles the C API:
```hx
var commandList = Genesis.createCommandList();

Genesis.commandListBegin(commandList);
Genesis.clear(commandList, GS_CLEAR_COLOR | GS_CLEAR_DEPTH, 0, 0, 0, 1);
Genesis.commandListEnd(commandList);

Genesis.commandListSubmit(commandList);
```

How you decide to work with Genesis is up to you, but if you are planning on using the C API, it might be a good idea to use the alternative way in Haxe for consistency.

## Standalone Usage in C (Not Recommended)
Genesis is not made to be used standalone, it is made to be used with Haxe (and possibly other languages in the future).  
If you do want to use Genesis standalone for some reason, you will need to include the CMakeLists.txt file in your project.  
You will not get any technical support for using Genesis standalone, as it is not officially supported.  
That aside, if you still plan on using Genesis standalone, I'd love to hear about it!