package cpp;

/**
 * In Haxe, the native `Float` type compiles into a typedef for `double` unless `HXCPP_FLOAT32` is defined. This type will always compile into a `float`
 * Note that the haxe compiler may try and cast it into a `double` when used.
 */
@:native("float")
@:scalar @:coreType @:notNull
extern abstract NativeFloat from (Float) to (Float) {}