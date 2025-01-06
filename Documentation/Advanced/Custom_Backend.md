# Custom Backend
Genesis allows you to create your own backend.  
This is very much unsupported but it is possible and may even be required for some platforms.

## Creating a Backend
Start with creating a C and Header file for your backend. After which you need to include the `genesis.h` header file.  
After you've done this you need to start by making a "create" function for your backend. Below is an example on how the OpenGL backend initializes:

```c
GsBackend *gs_gl460_create() {
    GsBackend *backend = GS_ALLOC(GsBackend);
    backend->type = GS_BACKEND_GL460;
    
    backend->init = gs_gl460_init;
    backend->shutdown = gs_gl460_shutdown;
    backend->submit = gs_gl460_submit;
    // ... etc ... 

    return backend;
}
```

This function creates a `GsBackend` object and sets the type to `GS_BACKEND_GL460`.  
After which it sets the `init`, `shutdown` and `submit` functions to the functions that are defined in the OpenGL backend.  
This document may not be frequently updated, so please refer to the source code for the most up-to-date information.

## Using the Backend
After you've created the backend, you need to set it in the `GsConfig` object.

## Initializing the Backend
The init function is completely up to you, but it should initialize the rendering context.  
It is expected that after this function is called, all features of the backend are available.

## Shutting Down the Backend
The shutdown function is completely up to you, but it should clean up the rendering context.

## Submitting Commands
The submit function is completely up to you, but it should submit the command list to the rendering context.
In the case of OpenGL, this would be something like this:

```c
void gs_gl460_submit(GsBackend *backend, GsCommandList *list) {
    for (int i = 0; i < list->count; i++) {
        const GsCommandListItem item = list->items[i];

        switch (item.type) {
            case GS_COMMAND_CLEAR:
                gs_gl460_cmd_clear(item);
                break;
            case GS_COMMAND_SET_VIEWPORT:
                gs_gl460_cmd_set_viewport(item);
                break;
            // ... etc ...
            default: break;
        }
    }
}
```

Depending on your backend it may natively have it's own command list, in which case you only have to translate the Genesis command list to your backend's command list.  
Please refer to `genesis.h` or the OpenGL backend for more information.

## Notes
- You should attempt to support all features that official backends support.
- The `data` field in the `GsCommandListItem` is a pointer to the data, the data is owned by Genesis internally and will be freed when the command list gets cleared or destroyed.
- You should internally try and minimize state changes, genesis does not do this for you yet. This will be added in the future.
- As soon as the backend is created, and the `init` function is called, the backend will lose ownership of the `GsBackend` object. Genesis will take care of the destruction of the object.