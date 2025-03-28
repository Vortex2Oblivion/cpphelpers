package cpp;

import cpp.RawPointer;

/**
 * An abstract that can be used like `String` for when externs specifically want this type.
 * Compiles into `wchar_t**`
 */
extern abstract WCharTStarStar(RawPointer<WCharT>) to(RawPointer<WCharT>) {
	inline function new(s:String)
		this = untyped __cpp__("const_cast<wchar_t**>{0}",s.wchar_str());

	@:from
	static public inline function fromString(s:String):WCharTStarStar
		return new WCharTStarStar(s);

	@:to extern public inline function toString():String
		return new String(untyped this);

    @:to extern public inline function toPointer():RawPointer<WCharT>
		return this;
}