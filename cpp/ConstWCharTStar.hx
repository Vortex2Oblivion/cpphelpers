package cpp;

/**
 * An abstract that can be used like `String` for when externs specifically want this type.
 * Compiles into similar to `ConstCharStar` compiling into `const char *` this compiles into `const wchar_t *`.
 * If you can think of a better name for this class please let me know.
 */
extern abstract ConstWCharTStar(RawConstPointer<WCharT>) to(RawConstPointer<WCharT>) {
	inline function new(s:String)
		this = untyped s.wchar_str();

	@:from
	static public inline function fromString(s:String):ConstWCharTStar
		return new ConstWCharTStar(s);

	@:to extern public inline function toString():String
		return new String(untyped this);

    @:to extern public inline function toPointer():RawConstPointer<WCharT>
		return this;
}
