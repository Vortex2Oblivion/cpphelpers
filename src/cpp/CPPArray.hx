package cpp;

extern class CPPArray { 
    // Before someone makes a speechbubble of this, there is no other way to do this. 
    // Using rest arguments dont work with the native array stuff.
    // Macros dont want to work either.
    static overload extern inline function create<T>():RawPointer<T> {
        return untyped __cpp__("{}");
    }
    static overload extern inline function create<T>(t1:T):RawPointer<T> {
        return untyped __cpp__("{ {0} }", t1);
    }
    static overload extern inline function create<T>(t1:T, t2:T):RawPointer<T> {
        return untyped __cpp__("{ {0}, {1} }", t1, t2);
    }
    static overload extern inline function create<T>(t1:T, t2:T, t3:T):RawPointer<T> {
        return untyped __cpp__("{ {0}, {1}, {2} }", t1, t2, t3);
    }
    static overload extern inline function create<T>(t1:T, t2:T, t3:T, t4:T):RawPointer<T> {
        return untyped __cpp__("{ {0}, {1}, {2}, {3} }", t1, t2, t3, t4);
    }
    static overload extern inline function create<T>(t1:T, t2:T, t3:T, t4:T, t5:T):RawPointer<T> {
        return untyped __cpp__("{ {0}, {1}, {2}, {3}, {4} }", t1, t2, t3, t4, t5);
    }
    static overload extern inline function create<T>(t1:T, t2:T, t3:T, t4:T, t5:T, t6:T):RawPointer<T> {
        return untyped __cpp__("{ {0}, {1}, {2}, {3}, {4}, {5} }", t1, t2, t3, t4, t5, t6);
    }
    static overload extern inline function create<T>(t1:T, t2:T, t3:T, t4:T, t5:T, t6:T, t7:T):RawPointer<T> {
        return untyped __cpp__("{ {0}, {1}, {2}, {3}, {4}, {5}, {6} }", t1, t2, t3, t4, t5, t6, t7);
    }
    static overload extern inline function create<T>(t1:T, t2:T, t3:T, t4:T, t5:T, t6:T, t7:T, t8:T):RawPointer<T> {
        return untyped __cpp__("{ {0}, {1}, {2}, {3}, {4}, {5}, {6}, {7} }", t1, t2, t3, t4, t5, t6, t7, t8);
    }
}