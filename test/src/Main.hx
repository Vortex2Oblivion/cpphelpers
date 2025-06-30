import cpp.RawPointer;
import cpp.NativeStd;
import cpp.CArray;
import cpp.TInt;
import cpp.StdArray;
import cpp.CPPArray;
import cpp.StdList;

class Main {
	static function main() {
		var array:StdArray<Int, TInt<10>> = CPPArray.create(10, 2, 235, 4);
		for(i in 0...array.size()-1){
			trace(array[i]);
		}
		array = CPPArray.create();

		var cArray:RawPointer<Int> = CArray.create([10, 234, 52]);
		NativeStd.cout(cArray[0]);
	}
}
