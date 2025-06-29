package cpp;

import haxe.exceptions.NotImplementedException;

extern class Syntax {
    /**
     * Alternative to `untyped __cpp__` 
     * NOTE: does not support injections through `{0}`, `{1}`, etc.
     * @param code 
     */
    public extern /*overload*/ inline static function code(code:String) {
        untyped __cpp__(code);
    }
    /*public extern overload inline static function code(code:String, args:haxe.extern.Rest<Dynamic>) {
        throw new NotImplementedException();
    }*/
}