
import "io";


main : pub fn (){

    age := readln;

    // the value we are matching is aliassed as 'matching'
    try match age {
        
        0..12  : println("teenager! {}", matching),
        
        13..19 : println("infant! {}", matching),
        
        20..UIntMax : println("adult! {}", matching),
        
        default : Unreachable(); // throw an unreachable exception

    };

}