package cpp;

extern class CArray {
	/*inline static function create<T>(array:Array<T>) {
		return untyped __cpp__(" (( int *) (cpp::Pointer_obj::ofArray( {1} ).value) )", "int", array);
	}*/
	inline static function create<T>(size:SizeT, type:Any):RawPointer<T> {
		return untyped __cpp__("(PyMethodDef*)malloc(sizeof({0}) * {1})", type, size);
	}
}
