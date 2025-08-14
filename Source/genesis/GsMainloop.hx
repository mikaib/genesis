package genesis;

#if (target.threaded)
import sys.thread.Thread;
#end

class GsMainloop {

    private static var _func: Void->Void;

    private static function call(): Void {
        #if (target.threaded)
        Thread.current().events.progress();
        #end

        _func();
    }

    public static function start(fun: Void->Void):Void {
        _func = fun;
        @:privateAccess Genesis._createMainloop(cpp.Function.fromStaticFunction(GsMainloop.call));
    }

}
