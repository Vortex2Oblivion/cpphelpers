package cpp;

import haxe.exceptions.NotImplementedException;

extern class NativeTryCatch {
    public static extern inline function nativeTry(f:haxe.Constraints.Function) {
        throw new NotImplementedException();
        /*untyped __cpp__("
            try{
                {0};
            }
        /*", f);*/
    }
    public static extern inline function nativeCatch(e:Class<Dynamic>, f:haxe.Constraints.Function) {
        throw new NotImplementedException();
        /*
        untyped __cpp__("
            */ /*
            catch({0}){
                {1};
            }
        //", e, f);
        */
    }
}