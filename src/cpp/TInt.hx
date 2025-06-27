package cpp;

/**
 * Wrapper class for constant `Int` values
 */
@:genericBuild(cpphelpers.macros.IntegerClassMacro.build())
extern class TInt<@:const T> {}