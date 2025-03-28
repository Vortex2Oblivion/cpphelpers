package cpp;

/**
 * An abstract that can be used like `String` for when externs specifically want this type.
 * Compiles into similar to `ConstCharStar` compiling into `const char *` this compiles into `const wchar_t *`.
 * If you can think of a better name for this class please let me know.
 */
extern abstract ConstChar16TStar(RawConstPointer<Char16T>) to (RawConstPointer<Char16T>) {
	inline function new(s:String)
		this = untyped s.wc_str();

	@:from
	static public inline function fromString(s:String):ConstChar16TStar
		return new ConstChar16TStar(s);

	@:to extern public inline function toString():String
		return new String(untyped this);

	@:to extern public inline function toPointer():RawConstPointer<Char16T>
		return this;
}
