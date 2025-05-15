package genesis;

import haxe.macro.Context;
import haxe.macro.Compiler;
import sys.io.Process;

class GenesisBuild {

    public static macro function init(): Void {
        if (Sys.systemName() == "Linux") {
            var useWayland = Context.defined("GS_WAYLAND");
            var useX11 = Context.defined("GS_X11");

            if (!useWayland && !useX11) {
                var waylandCheckPs = new Process("echo", ["$WAYLAND_DISPLAY"]);
                waylandCheckPs.exitCode(true);

                var waylandCheckOut = waylandCheckPs.stdout.readAll().toString();
                if (waylandCheckOut.length > 0) {
                    Compiler.define("GS_WAYLAND");
                    useWayland = true;

                    Sys.println("[genesis] Auto-detected Wayland!");
                } else {
                    Compiler.define("GS_X11");
                    useX11 = true;

                    Sys.println("[genesis] No Wayland detected, falling back to X11!");
                }
            }
        }
    }

}