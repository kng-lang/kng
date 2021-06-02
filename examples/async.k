// async is implemented with resolvers (which simply resolve to promises)
// (also support top level async!)


@optimise 0
long_function : async fn U32 {
    for 100_000_000 {}
    1;
}

import "io";

x := await long_function;
println("wating for x!"); // this will print even whilst we are waiting for x
println("x = {}", x);

/*

above resolves to:

x : Promise = Promise.create(fn {
    long_function;
}).on_success(fn {
    println("x = {}", x);
});

println("waiting for x!");


*/
