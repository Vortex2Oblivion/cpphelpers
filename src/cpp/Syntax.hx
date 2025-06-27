package cpp;

import haxe.exceptions.NotImplementedException;

extern class Syntax {
    public extern overload inline static function code(code:String) {
        untyped __cpp__(code);
    }
    public extern overload inline static function code(code:String, args:haxe.extern.Rest<Dynamic>) {
        throw new NotImplementedException();
    }
}