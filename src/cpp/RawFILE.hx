package cpp;

@:native("FILE")
/**
 * The raw C `FILE` type.
 * This class differs from `cpp.FILE` because `cpp.FILE` compiles into a `::cpp::Pointer<FILE>` and not just the raw `FILE` type.
 */
extern class RawFILE {
    @:native("fopen")
    public static function fopen(filename:ConstCharStar, mode:ConstCharStar):RawPointer<RawFILE>;

    @:native("fclose")
    public static function fclose(file:RawPointer<RawFILE>):Void;
}