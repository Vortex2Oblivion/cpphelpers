package cpp;

/**
 * Will force a cast to `::String` when compiled
 */
extern abstract ForcedString(String) to (String) {
	inline function new(s:String)
        this = untyped __cpp__("::String( {0} )", s);

	@:from
	static public inline function fromString(s:String):ForcedString
		return new ForcedString(s);

	@:to extern public inline function toString():String
		return new String(untyped this);
}
