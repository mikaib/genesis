# Config
## Introduction
To initialize Genesis, you need to create a `GsConfig` object.  
The config object may contain various properties such as the backend and the window to use.  
For full documentation on the `GsConfig` object, see the API documentation.

## Required Properties
In order to initialize Genesis, you need to set the following required properties:
- `backend`: The backend to use.
- `window`: The window to use. This is of the type `void*` and is platform-specific. For example, on Windows, this is an `HWND`.

## Notes
- You will need to manually destroy the `GsConfig` object after you are done with it.