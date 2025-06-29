package cpp;

/**
 * Compiles into `__int128_t` on Linux, `long long` elsewhere.
 */
#if linux
@:native("__int128_t")
#else
@:native("long long")
#end
@:scalar @:coreType @:notNull
extern abstract Int128 from (Int) to (Int) {}
