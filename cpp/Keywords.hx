package cpp;

import haxe.exceptions.NotImplementedException;

extern class Keywords {
    extern inline static function goto(l:String) {
       // untyped __cpp__("goto /*");untyped __cpp__("*/ //");untyped __cpp__ ("//"); untyped __cpp__(l);
       throw new NotImplementedException();
    }
}