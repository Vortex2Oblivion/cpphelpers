import cpp.RawPointer;
import cpp.Native;
import cpp.TInt;
import cpp.NativeStd;
import cpp.StdArray;

class Main {
	static function main() {
		var a:StdArray<Int, TInt<10>> = new StdArray<Int, TInt<10>>();
		var size = a.size();
		NativeStd.cout(size + "\n");
	}
}