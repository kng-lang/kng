
import "resolver";

// create a resolver to join 2 characters together
JoinTokens : Resolver (e : Expression){
    part1 := e.consume(Token);
    e.consume(" ")
    part2 := e.consume(Token);
    resolution(
        part1.to_string().append(part2.to_string())
        );
}

// creates a variable called ab
JoinTokens a b : U8 = 123;


// create a resolver to check a type is an unsigned number type
IsNumber : Resolver (e : Expression){
    match e.consume {
        UInt8, UInt16, UInt32, UInt64 : return resolution(matching.to_string()),
        default : CompError(); // unreachable is a compile time error
    }
}


// OK: resolves to "a_number : UInt8 = 123;"
a_number : IsNumber UInt8 = 123;

// FAIL: produces compile time error
a_number : IsNumber Int32 = 123;