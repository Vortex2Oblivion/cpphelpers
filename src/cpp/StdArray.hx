package cpp;

/**
 * Represents a `std::array`
 * Use `TInt` in the `S` param to dictate the size.
 */
@:include('array')
@:native('std::array')
@:nativeArrayAccess
extern class StdArray<T, N> implements ArrayAccess<Reference<T>>{
	@:overload(function(size:Int):Void {})
	function new():Void;

	extern inline function at(pos):T {
		return untyped  __cpp__("{1} . at( {0} )", pos, this);
	}
	extern inline function front():T {
		return untyped  __cpp__("{0} . front( )", this);
	}
	extern inline function back():T {
		return untyped  __cpp__("{0} . back( )", this);
	}
	extern inline function data():RawPointer<T> {
		return untyped  __cpp__("{0} . data( )", this);
	}

	extern inline function begin():T {
		return untyped  __cpp__("{0} . begin( )", this);
	}
	
	extern inline function end():T {
		return untyped  __cpp__("{0} . end( )", this);
	}

	extern inline function cbegin():T {
		return untyped  __cpp__("{0} . cbegin( )", this);
	}
	extern inline function cend():T {
		return untyped  __cpp__("{0} . cend( )", this);
	}
	extern inline function rbegin():T {
		return untyped  __cpp__("{0} . rbegin( )", this);
	}
	extern inline function rend():T {
		return untyped  __cpp__("{0} . rend( )", this);
	}
	extern inline function crbegin():T {
		return untyped  __cpp__("{0} . crbegin( )", this);
	}
	extern inline function crend():T {
		return untyped  __cpp__("{0} . crend( )", this);
	}

	extern inline function empty():Bool {
		return untyped  __cpp__("{0} . empty( )", this);
	}

	extern inline function size():Int {
		return untyped  __cpp__("{0} . size( )", this);
	}

	extern inline function maxSize():Int {
		return untyped  __cpp__("{0} . max_size( )", this);
	}

	extern inline function fill(value:T):Void {
		untyped  __cpp__("{0} . fill( {1} )", this, value);
	}
	extern inline function swap(array:RawPointer<StdArray<T, N>>):Void {
		untyped  __cpp__("{0} . max_size( {1} )", this, array);
	}
}
