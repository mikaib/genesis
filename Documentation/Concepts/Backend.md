# Backend
## Introduction
Genesis is an abstraction layer over other graphical libraries.  
This means that the actions you perform in Genesis are translated into the actions of the underlying graphical library.  
The "underlying graphical library" is called the "backend" in Genesis.  

## Backend Types
Currently, there are not many backends available, but we are working on it.  
The backends that are available are:
- OpenGL

The backend can be set in the `GsConfig` object, you may also use `Genesis.getOptimalBackendType()` to get the optimal backend that is available on the system.

## Backend Support Matrix
|    Backend    | Windows | Linux  | MacOS | Android | iOS | Web |
|:-------------:|:-------:|:------:|:-----:|:-------:|:---:|:---:|
|    OpenGL     |   ✅    |   ❌   |  ❌   |   ❌    | ❌  | ✅  |

## Notes
- You will need to manually destroy the `GsBackend` object after you are done with it.