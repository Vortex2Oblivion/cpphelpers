package cpp;

extern class Keywords {
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
