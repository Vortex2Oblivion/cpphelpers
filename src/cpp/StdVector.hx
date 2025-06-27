package cpp;

/**
 * Represents a `std::vector`
 * based on a class from hxvlc
 * @see https://github.com/MAJigsaw77/hxvlc/blob/main/source/cpp/StdVector.hx
 */
@:include('vector')
@:native('std::vector')
@:nativeArrayAccess
@:structAccess
extern class StdVector<T> implements ArrayAccess<Reference<T>>
{
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
