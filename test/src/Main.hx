import cpp.keywords.Unsigned;

class Main {
	static function main() {
		var test:Unsigned<Int> = untyped 10;
		trace(test);
		untyped test = -1000;
		trace(test);
	}
}
