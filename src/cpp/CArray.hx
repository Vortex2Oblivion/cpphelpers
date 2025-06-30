package cpp;

extern class CArray {
    extern overload inline static function create<T>(array:Array<T>) {
        return untyped __cpp__(" (( int *) (cpp::Pointer_obj::ofArray( {1} ).value) )", "int", array);
    }
}