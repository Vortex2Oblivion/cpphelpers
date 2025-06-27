package cpp;

@:include("iostream")
extern class NativeStd {
    
    public static extern inline function cout(s:Dynamic):Void{
        untyped __cpp__("std::cout << {0}", s);

        //hacky ass workaround to make sure iostream actually gets included
        //haxe keeps killing it because this class doesnt exist at runtime!
        untyped __cpp__('{0}', fuckyouhaxe());
        untyped __cpp__('*/ //');

    }

    public static extern inline function cerr(s:Dynamic):Void{
        untyped __cpp__("std::cerr << {0}", s);
        untyped __cpp__('{0}', fuckyouhaxe());
        untyped __cpp__('*/ //');
    }

    @:native("/*")
    private static function fuckyouhaxe():Void;
}