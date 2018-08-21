module csharp.library;

export:

int freeFunction (int value) {
	return value;
}

string stringFunction(string value) {
	import std.stdio;
	writeln("Printed from D: ", value);
	return value;
}

struct s1 {
	public float value;
	public s2 nestedStruct;

	public float getValue() {
		return value;
	}

	public void setNestedStruct(s2 nested) {
		nestedStruct = nested;
	}
}

struct s2 {
	public int value;
	public string str;
}

class c1 {
	public int intValue;
	public string stringValue;

	//TODO: We will deal with these cases later.
	//public c1 refMember;
	//public c1[] refArray;
	//public s1[] structArray;

	private s2 hidden;
	public @property s2 getHidden() {
		return hidden;
	}
	public @property s2 setHidden(s2 value) {
		return hidden = value;
	}

	public string testMemberFunc(string test, s1 value){
		return test;
	}
}
