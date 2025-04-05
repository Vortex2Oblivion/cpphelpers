package cpp;

@:native("FILE")
/**
 * The raw C `FILE` type.
 * This class differs from `cpp.FILE` because `cpp.FILE` compiles into a `::cpp::Pointer<FILE>` and not just the raw `FILE` type.
 */
extern class RawFILE {}