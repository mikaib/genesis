package genesis;

class GsMainloop {

    private static var _func: Void->Void;
    private static function call(): Void _func();

    public static function start(fun: Void->Void):Void {
        _func = fun;
        @:privateAccess Genesis._createMainloop(cpp.Function.fromStaticFunction(GsMainloop.call));
    }

}
