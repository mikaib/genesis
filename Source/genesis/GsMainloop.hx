package genesis;

#if (target.threaded)
import sys.thread.Thread;
#end

#if HXCPP_TRACY
import cpp.vm.tracy.TracyProfiler;
#end

class GsMainloop
{
    private static var _func:Void->Void;

    private static function call():Void
    {
        #if (target.threaded && !GS_DISABLE_EVENTLOOP)
        Thread.current().events.progress();
        #end

        _func();

        #if HXCPP_TRACY
        TracyProfiler.frameMark();
        #end
    }

    public static function start(fun:Void->Void):Void
    {
        _func = fun;
        @:privateAccess Genesis._createMainloop(cpp.Function.fromStaticFunction(GsMainloop.call));
    }
}