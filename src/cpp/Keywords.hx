package cpp;

extern class Keywords {

	@:native("nullptr")
	static var nullptr:Dynamic;

	overload inline static function delete<T>(obj:RawConstPointer<T>) {
		untyped __cpp__("delete {0}", obj);
	}
	overload inline static function delete<T>(obj:ConstPointer<T>) {
		untyped __cpp__("delete {0}", obj);
	}
	overload inline static function delete<T>(obj:Star<T>) {
		untyped __cpp__("delete {0}", obj);
	}
}
