package cpp;

extern class Keywords {
    inline static function delete<T>(obj:T) {
        untyped __cpp__("delete {0}", obj);
    }
}