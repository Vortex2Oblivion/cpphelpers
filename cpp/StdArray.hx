package cpp;

/**
 * Represents a `std::array`
 */
@:include('array')
@:native('std::array')
@:nativeArrayAccess
@:structAccess
extern class StdArray<T, @:const Size:Int> implements ArrayAccess<Reference<T>>{
	@:overload(function(size:Int):Void {})
	function new():Void;

	function at(index:Int):T;
	function front():T;
	function back():T;
	function data():RawPointer<T>;
	function empty():Bool;
	function size():Int;
	function capacity():Int;
	function reserve(newCapacity:Int):Void;
	function clear():Void;

	@:native("push_back")
	function pushBack(value:T):Void;

	@:native("pop_back")
	function popBack():Void;
	
	function resize(newSize:Int):Void;
}
