package cpp;

/**
 * Represents an `std::list`
 */
@:native('std::list')
@:include('list')
@:structAccess
extern class StdList<T> {

    /**
     * Creates a new `StdList`
     */
    @:overload(function(size:Int):Void {})
	function new():Void;

    /**
     * 	Add an element to the front of the list.
     * @param value The element to add.
     */
    @:native("push_front")
    function pushFront<T>(value:T):Void;

    /**
     * Adds an element to the end of the list
     * @param value The element to add.
     */
    @:native("push_back")
    function pushBack<T>(value:T):Void;

    /**
     * Remove the first element of the list.
     * @param value The element to remove.
     */
    @:native("pop_front")
    function popFront<T>(value:T):Void;

    /**
     * Removes the last element of the list.
     * @param value The element to remove.
     */
    @:native("pop_back")
    function popBack<T>(value:T):Void;

    /**
     * Returns the number of elements in the list.
     * @return The number of elements in the list.
     */
    function size():Int;

    /**
     * Returns the maximum possible number of elements
     * @return The maximum number of elements.
     */
    @:native("max_size")
    function maxSize():Int;

    /**
     * Checks if the list is empty.
     * @return Is the list empty.
     */
    function empty():Bool;

    /**
     * Accesses the first element of the list.
     * @return The element at the front of the list.
     */
    function front():T;

    /**
     * Accesses the last element of the list.
     * @return The element at the back of the list.
     */
    function back():T;

    /**
     * 	Returns a reverse iterator pointing to the last element of the list.
     * @return Reverse iterator pointing to the last element of the list.
     */
    function rbegin():T;
}