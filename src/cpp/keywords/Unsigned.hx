package cpp.keywords;

extern abstract Unsigned<T:Int>(_Unsigned<T>) to (_Unsigned<T>) {
	inline function new(s:T)
		this = untyped __cpp__(" {0}", s);

    @:from
	static public inline function from<T:Int>(t:T):Unsigned<T>
		return new Unsigned<T>(t);
}

@:native("unsigned ")
private extern class _Unsigned<T> {}