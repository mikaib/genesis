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
                var xorgCheckPs = new Process("sh", ["-c", "pgrep -x Xorg || pgrep -x Xwayland"]);
                xorgCheckPs.exitCode(true);

                var xorgCheckOut = xorgCheckPs.stdout.readAll().toString();
                if (xorgCheckOut.length > 0) {
                    Sys.println("[genesis] Auto-detected X11!");
                    Compiler.define("GS_X11");
                    useX11 = true;
                } else {
                    Sys.println("[genesis] Auto-detected Wayland!");
                    Compiler.define("GS_WAYLAND");
                    useWayland = true;
                }
            }
        }
    }

}