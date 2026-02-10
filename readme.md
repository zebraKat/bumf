# HolyP

HolyP is an adaption of HolyC for polytoria.

### Differences Between HolyC and HolyP
Most of everything is the same but, there are different types
and it removes the "print if its an expression".

### Syntax
```HC
Int Main() {
	// Declaring a variable
	Int x = 10;
	Float y = 10.0;
	String z = "This is a string";
	// In HolyP, there is a builtin string class as it is simpler than using a Int*.
	// HolyP stores the length of string ( Because it is implemented in lua ) So there is no point in using Int* for strings.

	for (Int j = 0; j < 10; ++j) {
		Printf("%d", j);
	}
	
	return 1;
}

Main;
```
