package cpphelpers.macros;

import haxe.macro.Context;
import haxe.macro.Type;
import haxe.macro.Expr;

/**
 * Generates extern classes for integer values.
 * Shoutout to @princesszetaofhyrule on discord for helping me with this.
 */
class IntegerClassMacro {
	static function extractConst(t) {
		switch t {
			case TInst(_.get().kind => KExpr(_.expr => EConst(CInt(v, _))), _):
				return v;
			default:
				throw "expected TInst";
		}
	}

	public static macro function build():ComplexType {
		var t = switch (Context.getLocalType()) {
			case TInst(_, [t]): t;
			default: throw "";
		};
		var intVal = extractConst(t);
		var name = '_$intVal';
		try {
			Context.getType('_$intVal');
		} catch (e) {
			var cls = macro class $name {
				//public inline function new() {}
			};
			cls.isExtern = true;
			cls.meta = [{name: ":native", params: [macro $v{intVal}], pos: (macro null).pos}];

			Context.defineType(cls);
		}
		return TPath({pack: [], name: '_$intVal'});
	}
}
