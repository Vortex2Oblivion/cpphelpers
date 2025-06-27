package cpp;

import haxe.exceptions.NotImplementedException;

extern class Label {
	extern inline static function insert(name:String) {
        /*untyped __cpp__('
            test:
                printf("test");
        //');*/
        throw new NotImplementedException();
	}
}
