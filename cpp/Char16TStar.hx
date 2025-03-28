package cpp;

/**
 * An abstract that can be used like `String` for when externs specifically want this type.
 * Compiles into `char16_t **`
 */
extern abstract Char16TStar(RawPointer<Char16T>) to (RawPointer<Char16T>) {
	inline function new(s:String)
        this = untyped __cpp__("const_cast<char16_t**>{0}", s.wc_str());

	@:from
	static public inline function fromString(s:String):Char16TStar
		return new Char16TStar(s);

	@:to extern public inline function toString():String
		return new String(untyped this);

	@:to extern public inline function toPointer():RawPointer<Char16T>
		return this;
}
